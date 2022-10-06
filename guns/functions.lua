local utils = require("/[globals]/utils")

--[[
    -- GIVE_WEAPON_TO_PED
GiveWeaponToPed(
	ped (Ped) -> GetPlayerPed(-1) to get the local player
	weaponHash (Hash) 
	ammoCount (integer) 
	isHidden (boolean)
	bForceInHand (boolean)
)
]] --
local gunPrefix = "weapon_"

function giveWeapon(hashGun)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(gunPrefix .. hashGun), 999, false, false)
end

-- flashlight, suppressor (silenciador)
function giveWeaponComponent(weaponHash, component)
    if HasPedGotWeapon(GetPlayerPed(-1), GetHashKey(gunPrefix .. weaponHash), false) then
        GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey(gunPrefix .. weaponHash), GetHashKey(component))
    else
        utils.notify("~r~You don't have the gun")
    end
end
