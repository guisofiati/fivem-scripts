local utils = require("/[globals]/utils")
-- f8 -> /clearguns
RegisterCommand("clearguns", function()
    RemoveAllPedWeapons(GetPlayerPed(-1), true)
    utils.notify("~r~Cleared inventory with weapons") -- ~r~ -> color red in text
end)

Citizen.CreateThread(function()
    -- https://docs.fivem.net/docs/game-references/controls/#controls (controls)
    local h_key = 74 -- key 'H'

    while true do
        Citizen.Wait(1) -- 1 second, just to not crash the game
        if IsControlJustReleased(1, h_key) then
            print("The key " .. h_key .. " was pressed") -- print in console when f8 pressed
            -- https://wiki.rage.mp/index.php?title=Weapons (gun's name)
            giveWeapon("pistol") -- gun's name without 'weapon_'
            giveWeapon("assaultrifle")
            giveWeapon("rpg")

            -- https://wiki.rage.mp/index.php?title=Weapons_Components
            giveWeaponComponent("pumpshotgun", "COMPONENT_AT_SR_SUPP")
            giveWeaponComponent("pumpshotgun", "COMPONENT_AT_SR_FLSH")

            utils.alert("~b~Given weapons with ~INPUT_VEH_HEADLIGHT~") -- ~b~ color blue in text / INPUT_VEH_HEADLIGHT -> show key in dialog
        end
    end
end)
