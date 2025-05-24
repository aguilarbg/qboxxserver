local playerPed = PlayerPedId()
local shownAge = false

RegisterNetEvent('ag-aging:showAge', function(age)
    lib.notify({
        title = 'Your Age',
        description = ('You are %s years old.'):format(age),
        type = 'inform'
    })
end)

-- Apply aging effects
RegisterNetEvent('ag-aging:applyEffects', function(age)
    local ped = PlayerPedId()

    if age >= Config.StartAgingAt then
        SetRunSprintMultiplierForPlayer(PlayerId(), 0.9)
        SetPedMoveRateOverride(ped, 0.9)
    end

    if age >= Config.ElderlyAt then
        RequestAnimSet("move_m@injured")
        while not HasAnimSetLoaded("move_m@injured") do Wait(10) end
        SetPedMovementClipset(ped, "move_m@injured", 1.0)
    end
end)

-- Restore default movement (for testing/admin)
RegisterNetEvent('ag-aging:resetEffects', function()
    local ped = PlayerPedId()
    ResetPedMovementClipset(ped, 1.0)
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
end)