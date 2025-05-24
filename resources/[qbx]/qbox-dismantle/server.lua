local dismantledParts = {}

RegisterNetEvent("qbox:dismantle:markPart", function(plate, partName)
    if not dismantledParts[plate] then
        dismantledParts[plate] = {}
    end

    dismantledParts[plate][partName] = true


    TriggerClientEvent("qbox:dismantle:updatePart", -1, plate, partName)
end)


RegisterNetEvent("qbox:dismantle:requestState", function()
    local src = source
    TriggerClientEvent("qbox:dismantle:sendState", src, dismantledParts)
end)
