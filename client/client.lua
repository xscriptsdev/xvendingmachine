if Config.Target == "ox" then
    exports.qtarget:AddTargetModel(Config.VendingProps["snacks"], {
        options = {
            {
                event = "xVendingMachine:client:openSnacks",
                icon = Config.Strings["snacks"]["icon"],
                label = Config.Strings["snacks"]["label"],
            },
        },
        distance = 1.5
    })
    exports.qtarget:AddTargetModel(Config.VendingProps["drinks"], {
        options = {
            {
                event = "xVendingMachine:client:openDrinks",
                icon = Config.Strings["drinks"]["icon"],
                label = Config.Strings["drinks"]["label"],
            },
        },
        distance = 1.5
    })
    exports.qtarget:AddTargetModel(Config.VendingProps["coffe"], {
        options = {
            {
                event = "xVendingMachine:client:openCoffe",
                icon = Config.Strings["coffe"]["icon"],
                label = Config.Strings["coffe"]["label"],
            },
        },
        distance = 1.5
    })
elseif Config.Target == "qb" then
    exports['qb-target']:AddTargetModel(Config.VendingProps["snacks"], {
        options = {
            {
            event = "xVendingMachine:client:openSnacks",
            icon = Config.Strings["snacks"]["icon"],
            label = Config.Strings["snacks"]["label"],
            }
        },
        distance = 1.5,
    })
    exports['qb-target']:AddTargetModel(Config.VendingProps["drinks"], {
        options = {
            {
            event = "xVendingMachine:client:openDrinks",
            icon = Config.Strings["drinks"]["icon"],
            label = Config.Strings["drinks"]["label"],
            }
        },
        distance = 1.5,
    })
    exports['qb-target']:AddTargetModel(Config.VendingProps["coffe"], {
        options = {
            {
            event = "xVendingMachine:client:openCoffe",
            icon = Config.Strings["coffe"]["icon"],
            label = Config.Strings["coffe"]["label"],
            }
        },
        distance = 1.5,
    })
end

AddEventHandler("xVendingMachine:client:openSnacks", function()
    if Config.Context == "ox" then
        snacks = {}
        if Config.VendingMachines["snacks"] then
            for item, data in pairs(Config.VendingMachines["snacks"]) do
                table.insert(snacks, {
                    title = data.label,
                    description = data.price .. "$",
                    icon = data.icon,
                    onSelect = function()
                        TriggerServerEvent('xVendingMachine:server:buyItem', {item = item, price = data.price})
                    end
                })
            end
        end
        lib.registerContext({
            id = 'snacks',
            title = Config.Strings["snacks"]["contextTitle"],
            options = snacks,
        })
        lib.showContext('snacks')
    elseif Config.Context == "qb" then
        snacks = {}
        if Config.VendingMachines["snacks"] then
            for item, data in pairs(Config.VendingMachines["snacks"]) do
                table.insert(snacks, {
                    header = data.label,
                    txt = data.price .. "$",
                    icon = data.icon,
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
        exports['qb-menu']:openMenu(snacks)
    end
end)

AddEventHandler("xVendingMachine:client:openDrinks", function()
    if Config.Context == "ox" then
        drinks = {}
        if Config.VendingMachines["drinks"] then
            for item, data in pairs(Config.VendingMachines["drinks"]) do
                table.insert(drinks, {
                    title = data.label,
                    description = data.price .. "$",
                    icon = data.icon,
                    onSelect = function()
                        TriggerServerEvent('xVendingMachine:server:buyItem', {item = item, price = data.price})
                    end
                })
            end
        end
        lib.registerContext({
            id = 'drinks',
            title = Config.Strings["drinks"]["contextTitle"],
            options = drinks,
        })
        lib.showContext('drinks')
    elseif Config.Context == "qb" then
        drinks = {}
        if Config.VendingMachines["drinks"] then
            for item, data in pairs(Config.VendingMachines["drinks"]) do
                table.insert(drinks, {
                    header = data.label,
                    txt = data.price .. "$",
                    icon = data.icon,
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
        exports['qb-menu']:openMenu(drinks)
    end
end)

AddEventHandler("xVendingMachine:client:openCoffe", function()
    if Config.Context == "ox" then
        coffe = {}
        if Config.VendingMachines["coffe"] then
            for item, data in pairs(Config.VendingMachines["coffe"]) do
                table.insert(coffe, {
                    title = data.label,
                    description = data.price .. "$",
                    icon = data.icon,
                    onSelect = function()
                        TriggerServerEvent('xVendingMachine:server:buyItem', {item = item, price = data.price})
                    end
                })
            end
        end
        lib.registerContext({
            id = 'coffe',
            title = Config.Strings["coffe"]["contextTitle"],
            options = coffe,
        })
        lib.showContext('coffe')
    elseif Config.Context == "qb" then
        coffe = {}
        if Config.VendingMachines["coffe"] then
            for item, data in pairs(Config.VendingMachines["coffe"]) do
                table.insert(coffe, {
                    header = data.label,
                    txt = data.price .. "$",
                    icon = data.icon,
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
        exports['qb-menu']:openMenu(coffe)
    end
end)

RegisterNetEvent("xVandingMachine:client:sendNotify")
AddEventHandler("xVandingMachine:client:sendNotify", function(msg)
    xNotify(msg)
end)