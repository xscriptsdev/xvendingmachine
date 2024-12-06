--██╗░░██╗  ░██████╗░█████╗░██████╗░██╗██████╗░████████╗░██████╗
--╚██╗██╔╝  ██╔════╝██╔══██╗██╔══██╗██║██╔══██╗╚══██╔══╝██╔════╝
--░╚███╔╝░  ╚█████╗░██║░░╚═╝██████╔╝██║██████╔╝░░░██║░░░╚█████╗░
--░██╔██╗░  ░╚═══██╗██║░░██╗██╔══██╗██║██╔═══╝░░░░██║░░░░╚═══██╗
--██╔╝╚██╗  ██████╔╝╚█████╔╝██║░░██║██║██║░░░░░░░░██║░░░██████╔╝
--╚═╝░░╚═╝  ╚═════╝░░╚════╝░╚═╝░░╚═╝╚═╝╚═╝░░░░░░░░╚═╝░░░╚═════╝░
-- Thanks for downloading!!!!
-- Support: https://discord.gg/N74Yuq9ARQ

Config = {}

Config.FrameWork = "esx" -- "esx" if you are using esx (es_extended) | "qb" if you are using qb (qb-core)

Config.Notification = "ox" -- "esx for esx_notify | "ox" for ox_lib notify | "qb" for qb notify | "custom" - you can put your export in [client/functions.lua]

Config.Target = "ox" -- "ox" if you are using q/ox target | "qb" if you are using qb-target

Config.Context = "ox" -- "ox" if you are using ox_lib context | "qb" if you are using qb-menu context

Config.VendingProps = {
    ["snacks"] = {
        "prop_vend_snak_01_tu",
        "prop_vend_snak_01"
    },
    ["drinks"] = {
        "prop_vend_soda_01",
        "prop_vend_soda_02"
    },
    ["coffe"] = {
        "prop_vend_coffe_01"
    }
}

Config.Strings = {
    ["snacks"] = {
        ["label"] = "Use snacks vending",     -- Label on target
        ["icon"] = "fa-solid fa-cookie-bite", -- Icon on target | You can find all icons here ["https://fontawesome.com/v6/icons/"]
        ["contextTitle"] = "Snacks Vending",  -- Context menu title | Only for ox_lib context
    },
    ["drinks"] = {
        ["label"] = "Use drinks vending",
        ["icon"] = "fa-solid fa-wine-bottle",
        ["contextTitle"] = "Drinks Vending",
    },
    ["coffe"] = {
        ["label"] = "Use coffe vending",
        ["icon"] = "fa-solid fa-mug-hot",
        ["contextTitle"] = "Coffe Vending",
    },
    ["machine"] = {
        ["bought"] = "You succesfuly bought from vanding machine",
        ["noMoney"] = "You dont have enough money",
    }
}

Config.VendingMachines = {
    ["snacks"] = {
        ["snickers"] = {                        -- Inventory item name
            label = "Snickers",                 -- Label on context
            icon = "fa-solid fa-cookie-bite",   -- Icon on context | You can find all icons here ["https://fontawesome.com/v6/icons/"]
            price = 15,                         -- Price
        },
        ["oreo"] = {
        label = "Oreo",
        icon = "fa-solid fa-cookie-bite",
        price = 15,
    },
    },
    ["drinks"] = {
        ["cola"] = {     
            label = "Coca Cola",
            icon = "fa-solid fa-wine-bottle",
            price = 10,
        },
    },
    ["coffe"] = {
        ["nesscaffe"] = {
            label = "Nesscaffe",
            icon = "fa-solid fa-mug-hot",
            price = 5,
        },
        ["hotchocolate"] = {
            label = "Hot  chocolate",
            icon = "fa-solid fa-mug-hot",
            price = 3,
        },
    }
}