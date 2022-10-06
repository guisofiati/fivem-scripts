-- f8 -> /clearguns
RegisterCommand("clearguns", function()
    RemoveAllPedWeapons(GetPlayerPed(-1), true)
    notify("~r~Cleared inventory with weapons") -- ~r~ -> color red in text
end)

Citizen.CreateThread(function()
    -- https://docs.fivem.net/docs/game-references/controls/#controls (controls)
    local h_key = 74 -- key 'H'
    local gunPrefix = "weapon_"
    while true do
        Citizen.Wait(1) -- 1 second, just to not crash the game
        if IsControlJustReleased(1, h_key) then
            print("The key " .. h_key .. " was pressed") -- print in console when f8 pressed
            -- https://wiki.rage.mp/index.php?title=Weapons (gun's name)
            giveWeapon(gunPrefix .. "pistol") -- gun's name without 'weapon_'
            giveWeapon(gunPrefix .. "assaultrifle")
            giveWeapon(gunPrefix .. "rpg")

            -- https://wiki.rage.mp/index.php?title=Weapons_Components
            giveWeaponComponent("weapon_pumpshotgun", "COMPONENT_AT_SR_SUPP")
            giveWeaponComponent("weapon_pumpshotgun", "COMPONENT_AT_SR_FLSH")

            alert("~b~Given weapons with ~INPUT_VEH_HEADLIGHT~") -- ~b~ color blue in text / INPUT_VEH_HEADLIGHT -> show key in dialog
        end
    end
end)
