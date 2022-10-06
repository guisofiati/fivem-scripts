module = {}

function module.alert(message)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentString(message)
    EndTextCommandDisplayHelp(0, 0, 1, -1)
end

-- notify: show above the minimap a dialog
function module.notify(message)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(message)
    DrawNotification(true, false)
end

return module
