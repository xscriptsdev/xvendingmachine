fx_version 'cerulean'
game 'gta5'
lua54 'yes'
author 'XSCRIPTS'
description 'X Vending Machine'
version '1.0s'

shared_scripts {
    '@ox_lib/init.lua',
    '@es_extended/locale.lua',
    'config.lua'
}

client_scripts {
    'config.lua',
    'client/*'
}

server_scripts {
    'config.lua',
    'server/*'
}