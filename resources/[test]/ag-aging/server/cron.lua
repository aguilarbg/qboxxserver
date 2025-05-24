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

local function updateAllPlayerAges()
    MySQL.query('SELECT identifier, charinfo FROM users', {}, function(results)
        for _, row in ipairs(results) do
            local charinfo = json.decode(row.charinfo)
            local birthdate = charinfo.birthdate
            if birthdate then
                local newAge = calculateAgeFromBirthdate(birthdate)
                charinfo.age = newAge
                MySQL.update('UPDATE users SET charinfo = ? WHERE identifier = ?', {
                    json.encode(charinfo), row.identifier
                })
            end
        end
    end)
end

-- Run every 24 hours (cron)
CreateThread(function()
    while true do
        updateAllPlayerAges()
        Wait(86400000) -- 24 hours
    end
end)