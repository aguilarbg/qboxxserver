local items = {
    arthritis_pill = {
        effect = 'Relieves joint pain temporarily.',
        duration = 60000 -- 60 seconds
    },
    back_support = {
        effect = 'Improves movement slightly for a short time.',
        duration = 120000 -- 2 minutes
    }
}

for item, data in pairs(items) do
    lib.registerUsableItem(item, function(source)
        TriggerClientEvent('ox_lib:notify', source, {
            title = 'Used: ' .. item,
            description = data.effect,
            type = 'success'
        })
        TriggerClientEvent('ag-aging:resetEffects', source)
        SetTimeout(data.duration, function()
            local age = playersAges[source] or 20
            TriggerClientEvent('ag-aging:applyEffects', source, age)
        end)
    end)
end