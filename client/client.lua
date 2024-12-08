if Config.Target == "ox" then
    for vendingType, vendingData in pairs(Config.VendingMachines) do
        if Config.VendingProps[vendingType] then
            for _, propModel in ipairs(Config.VendingProps[vendingType]) do
                exports.qtarget:AddTargetModel(propModel, {
                    options = {
                        {
                            event = "xVendingMachine:client:openContext",
                            icon = vendingData.icon,
                            label = vendingData.label,
                            args = {
                                vendingType = vendingType
                            },
                            action = function()
                                if Config.Context == "ox" then
                                    local vendingType = vendingData.vendingType or vendingType
                                    local context = Config.VendingMachines[vendingType]

                                    if context then
                                        local options = {}
                                        for itemName, itemData in pairs(context.itemList) do
                                            if itemName and itemData then
                                                table.insert(options, {
                                                    title = itemData.label,
                                                    icon = itemData.icon,
                                                    description = "Price: $" .. itemData.price,
                                                    onSelect = function()
                                                        TriggerServerEvent("xVendingMachine:server:buyItem", {
                                                            item = itemName,
                                                            price = itemData.price
                                                        })
                                                    end
                                                })
                                            end
                                        end
                                        if #options > 0 then
                                            lib.registerContext({
                                                id = "vending_menu_" .. vendingType,
                                                title = context.contextTitle,
                                                options = options
                                            })
                                            lib.showContext("vending_menu_" .. vendingType)
                                        end
                                    end
                                end
                            end
                        },
                    },
                    distance = 1.5
                })
            end
        end
    end
elseif Config.Target == "qb" then
    for vendingType, vendingData in pairs(Config.VendingMachines) do
        if Config.VendingProps[vendingType] then
            for _, propModel in ipairs(Config.VendingProps[vendingType]) do
                exports['qb-target']:AddTargetModel(propModel, {
                    options = {
                        {
                            event = "xVendingMachine:client:openContext",
                            icon = vendingData.icon,
                            label = vendingData.label,
                            args = {
                                vendingType = vendingType
                            },
                            action = function()
                                if Config.Context == "qb" then
                                    local vendingType = vendingData.vendingType or vendingType
                                    local context = Config.VendingMachines[vendingType]
    
                                    if context then
                                        local options = {}
                                        for itemName, itemData in pairs(context.itemList) do
                                            if itemName and itemData then
                                                table.insert(options, {
                                                    header  = itemData.label,
                                                    icon = itemData.icon,
                                                    txt = "Price: $" .. itemData.price,
                                                    params = {
                                                        event = 'xVendingMachine:server:buyItem',
                                                        args = {
                                                            item = item,
                                                            price = data.price
                                                        }
                                                    }
                                                })
                                            end
                                        end
                                        exports['qb-context']:OpenContext(options)
                                    end
                                end
                            end
                        },
                    },
                    distance = 1.5
                })
            end
        end
    end    
end