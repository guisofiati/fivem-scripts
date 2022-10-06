local utils = require("/[globals]/utils")

local randomVehicles = { "adder", "pcj", "comet" }

RegisterCommand("car", function()
    local vehicle = (randomVehicles[math.random(#randomVehicles)])
    spawnVehicle(vehicle)
    utils.notify("~p~Spawned vehicle: ~h~~g~" .. vehicle)
end)
