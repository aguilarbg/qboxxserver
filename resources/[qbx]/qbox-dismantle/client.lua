local dismantleLocation = vector3(-465.71, -1668.67, 19.06)
local dismantleParts = {
    { name = "Лява врата", offset = vector3(-1.2, 0.0, 0.6), door = 0, item = "metalscrap", amount = 5 },
    { name = "Дясна врата", offset = vector3(1.2, 0.0, 0.6), door = 1, item = "metalscrap", amount = 5 },
    { name = "Капак",       offset = vector3(0.0, 2.0, 0.8), door = 4, item = "plastic", amount = 3 },
    { name = "Багажник",    offset = vector3(0.0, -2.0, 0.7), door = 5, item = "plastic", amount = 2 },
    { name = "Лява гума",   offset = vector3(-1.2, 1.5, 0.2), tire = 0, item = "glass", amount = 4 },
    { name = "Дясна гума",  offset = vector3(1.2, 1.5, 0.2), tire = 1, item = "glass", amount = 4 },
    { name = "Смачкай остатъка", offset = vector3(0.0, 0.0, 0.0), crush = true, item = nil, amount = 0 }
}

local busy = false
local lockedParts = {}
local dismantledParts = {} -- съхранява разглобените части за всяка кола (по регистрационен номер)
local currentTargets = {}

local function isPartMissing(veh, part)
    if part.door ~= nil then
        return IsVehicleDoorDamaged(veh, part.door)
    elseif part.tire ~= nil then
        return IsVehicleTyreBurst(veh, part.tire, false)
    elseif part.crush then
        return false
    end
    return false
end

local function isPartDismantled(plate, partName)
    if dismantledParts[plate] and dismantledParts[plate][partName] then
        return true
    end
    return false
end

local function dismantlePart(veh, plate, part)
    if busy then return end
    lockedParts[plate] = lockedParts[plate] or {}

    if lockedParts[plate][part.name] then
        exports.ox_lib:notify({type = 'error', description = 'Тази част вече се разглобява от друг играч'})
        return
    end

    if isPartMissing(veh, part) or isPartDismantled(plate, part.name) then
        exports.ox_lib:notify({type = 'error', description = 'Тази част вече е разглобена'})
        return
    end

    busy = true
    lockedParts[plate][part.name] = true

    local ped = PlayerPedId()
    local partWorld = GetOffsetFromEntityInWorldCoords(veh, part.offset.x, part.offset.y, part.offset.z)

    TaskGoStraightToCoord(ped, partWorld.x, partWorld.y, partWorld.z, 1.0, -1, 0.0, 0.0)
    Wait(1000)

    RequestAnimDict("mini@repair")
    while not HasAnimDictLoaded("mini@repair") do Wait(10) end
    TaskPlayAnim(ped, "mini@repair", "fixing_a_ped", 8.0, -8.0, 5000, 49, 0, false, false, false)
    Wait(5000)
    ClearPedTasks(ped)

    if part.door ~= nil then
        SetVehicleDoorBroken(veh, part.door, true)
    elseif part.tire ~= nil then
        SetVehicleTyreBurst(veh, part.tire, true, 1000.0)
    elseif part.crush then
        DeleteVehicle(veh)
    end

    if part.item ~= nil then
        TriggerServerEvent("ox_inventory:addItem", part.item, part.amount)
        exports.ox_lib:notify({type = 'success', description = ("Получихте %d x %s"):format(part.amount, part.item)})
    end

    TriggerServerEvent("qbox:dismantle:markPart", plate, part.name)

    lockedParts[plate][part.name] = nil
    busy = false
end

local function clearTargets()
    for _, id in pairs(currentTargets) do
        exports.ox_target:removeZone(id)
    end
    currentTargets = {}
end

local function registerTargets(veh)
    clearTargets()
    local plate = GetVehicleNumberPlateText(veh)

    for i, part in ipairs(dismantleParts) do
        local coords = GetOffsetFromEntityInWorldCoords(veh, part.offset.x, part.offset.y, part.offset.z)

        local zoneData = {
            coords = coords,
            size = vector3(1.5, 1.5, 1.5),
            rotation = 0,
            debug = false,
            options = {
                {
                    name = "dismantle_part_" .. i,
                    icon = "fas fa-tools",
                    label = "Разглоби: " .. part.name,
                    canInteract = function()
                        if busy then return false end
                        if not DoesEntityExist(veh) then return false end
                        if isPartMissing(veh, part) then return false end
                        if isPartDismantled(plate, part.name) then return false end
                        return true
                    end,
                    onSelect = function()
                        dismantlePart(veh, plate, part)
                    end,
                }
            }
        }

        local id = exports.ox_target:addBoxZone(zoneData)
        table.insert(currentTargets, id)
    end
end

local function drawMarkers(veh)
    for _, part in ipairs(dismantleParts) do
        local coords = GetOffsetFromEntityInWorldCoords(veh, part.offset.x, part.offset.y, part.offset.z)
        DrawMarker(2, coords.x, coords.y, coords.z + 0.1, 0, 0, 0, 0, 0, 0, 0.3, 0.3, 0.3, 0, 255, 0, 150, false, false, false, 1, false, false, false)
    end
end

CreateThread(function()
    TriggerServerEvent("qbox:dismantle:requestState")
end)

RegisterNetEvent("qbox:dismantle:updatePart", function(plate, partName)
    dismantledParts[plate] = dismantledParts[plate] or {}
    dismantledParts[plate][partName] = true
end)

RegisterNetEvent("qbox:dismantle:sendState", function(state)
    dismantledParts = state or {}
end)

CreateThread(function()
    local lastVeh = nil
    while true do
        Wait(1000)
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)

        if #(pos - dismantleLocation) < 20.0 then
            local veh = GetClosestVehicle(pos.x, pos.y, pos.z, 5.0, 0, 70)
            if veh ~= 0 and DoesEntityExist(veh) then
                drawMarkers(veh)
                if veh ~= lastVeh then
                    registerTargets(veh)
                    lastVeh = veh
                end
            else
                clearTargets()
                lastVeh = nil
                Wait(1000)
            end
        else
            clearTargets()
            lastVeh = nil
            Wait(2000)
        end
    end
end)
