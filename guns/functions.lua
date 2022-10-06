-- alert: show above the screen a dialog
function alert(message)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentString(message)
    EndTextCommandDisplayHelp(0, 0, 1, -1)
end

-- notify: show above the minimap a dialog
function notify(message)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(message)
    DrawNotification(true, false)
end

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
        notify("~r~You don't have the gun")
    end
end
