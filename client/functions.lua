if Config.FrameWork == "esx" then
    ESX = exports["es_extended"]:getSharedObject()
elseif Config.FrameWork == "qb" then
    QBCore = exports['qb-core']:GetCoreObject()
end


function xNotify(msg)
    if Config.Notification == "esx" then
        ESX.ShowNotification(msg)
    elseif Config.Notification == "qb" then
        QBCore.Functions.Notify(msg)
    elseif Config.Notification == "ox" then
        lib.notify({
            title = 'Vending Machine',
            description = msg,
            position = 'top-right',
        })
    elseif  Config.Notification == "custom" then
        return -- you can put here your notify export or event
    end
end