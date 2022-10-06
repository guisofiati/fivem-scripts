RegisterCommand("die", function()
    SetEntityHealth(PlayerPedId(), 0) -- set to 0 player's life
end)
