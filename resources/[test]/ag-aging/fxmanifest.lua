fx_version 'cerulean'
game 'gta5'

lua54 'yes'

author 'YourName'
description 'Aging system for Qbox using ox_lib and illenium-appearance'
version '1.0.0'

shared_script 'config.lua'
shared_script 'locales/en.lua'

client_scripts {
    '@ox_lib/init.lua',
    'client/main.lua'
}

server_scripts {
    '@ox_lib/init.lua',
    'server/main.lua',
    'server/cron.lua',
    'server/items.lua'
}

dependencies {
    'ox_lib',
    'ox_inventory',
    'illenium-appearance'
}