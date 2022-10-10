local color = {
    r = 247,
    g = 223,
    b = 88,
    a = 255
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5) -- to not crash the game

        -- Rectangle
        DrawRect(150, 100, 3.2, 0.05, 66, 134, 244, 245)

        --Text
        SetTextFont(0)
        SetTextScale(0.4, 0.4)
        SetTextColour(color.r, color.g, color.b, color.a)
        SetTextEntry("STRING")
        AddTextComponentString("Welcome to the server!")
        DrawText(0.0001, 0.0001)
    end
end)
