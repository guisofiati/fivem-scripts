function spawnVehicle(vehicleName)
    local vehicle = GetHashKey(vehicleName)
    RequestModel(vehicle)

    while not HasModelLoaded(vehicle) do
        RequestModel(vehicle)
        Citizen.Wait(0)
    end

    local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false)) -- spawn near the player
    local renderVehicle = CreateVehicle(vehicle, x + 3, y + 3, z + 1, 0.0, true, false)
    SetEntityAsMissionEntity(renderVehicle, true, true)
end
