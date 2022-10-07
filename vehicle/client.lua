local randomVehicles = { "adder", "pcj", "comet" }

RegisterCommand("car", function()
    local vehicle = (randomVehicles[math.random(#randomVehicles)])
    spawnVehicle(vehicle)
    notify("~p~Spawned vehicle: ~h~~g~" .. vehicle)
end)
