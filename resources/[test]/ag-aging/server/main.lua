local playersAges = {}

local function calculateAgeFromBirthdate(birthdate)
    local day, month, year = birthdate:match("(%d+)%-(%d+)%-(%d+)")
    if not day or not month or not year then return 20 end
    local birth = os.time({day = tonumber(day), month = tonumber(month), year = tonumber(year)})
    local now = os.time()
    local age = os.date("!%Y", now) - tonumber(year)
    if os.date("!%m", now) < tonumber(month) or (os.date("!%m", now) == tonumber(month) and os.date("!%d", now) < tonumber(day)) then
        age = age - 1
    end
    return age
end

RegisterCommand("myage", function(source)
    local age = playersAges[source] or 20
    TriggerClientEvent('ag-aging:showAge', source, age)
end)

AddEventHandler('playerJoining', function()
    local src = source
    local identifier = GetPlayerIdentifierByType(src, "license")
    MySQL.scalar('SELECT charinfo FROM users WHERE identifier = ?', { identifier }, function(charinfo)
        if charinfo then
            local info = json.decode(charinfo)
            local birthdate = info.birthdate
            if birthdate then
                local age = calculateAgeFromBirthdate(birthdate)
                playersAges[src] = age
                TriggerClientEvent('ag-aging:applyEffects', src, age)
            end
        end
    end)
end)

AddEventHandler('playerDropped', function()
    playersAges[source] = nil
end)