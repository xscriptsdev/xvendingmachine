if Config.FrameWork == "esx" then
    ESX = exports["es_extended"]:getSharedObject()
elseif Config.FrameWork == "qb" then
    QBCore = exports['qb-core']:GetCoreObject()
end

RegisterNetEvent("xVendingMachine:server:buyItem")
AddEventHandler("xVendingMachine:server:buyItem", function(data)
    local source = source
    local item = data.item
    local price = data.price

    print("Received buy request from Player ID: " .. source .. " for item: " .. item .. " at price: $" .. price)

    if Config.FrameWork == "esx" then
        local xPlayer = ESX.GetPlayerFromId(source)
        local cash = xPlayer.getInventoryItem("money").count
        if cash >= price then
            xPlayer.removeInventoryItem("money", price)
            xPlayer.addInventoryItem(item, 1)
            TriggerClientEvent("xVendingMachine:client:sendNotify", source, Config.Strings["machine"]["bought"])
        else
            TriggerClientEvent("xVendingMachine:client:sendNotify", source, Config.Strings["machine"]["noMoney"])
        end
    elseif Config.FrameWork == "qb" then
        local Player = QBCore.Functions.GetPlayer(source)
        local cash = Player.PlayerData.money["cash"]

        if cash >= price then
            Player.Functions.RemoveMoney("cash", price)
            Player.Functions.AddItem(item, 1)
            TriggerClientEvent("xVendingMachine:client:sendNotify", source, Config.Strings["machine"]["bought"])
        else
            TriggerClientEvent("xVendingMachine:client:sendNotify", source, Config.Strings["machine"]["noMoney"])
        end
    end
end)

