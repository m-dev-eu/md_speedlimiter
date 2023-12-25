-- Resource Metadata
fx_version 'cerulean'
games { 'gta5' }
use_experimental_fxv2_oal 'yes'
lua54 'yes'

author 'm-dev.eu'
description 'Limits the speed of vehicles'
version '1.0'

-- Manifest
escrow_ignore {
    'config.lua',
    'client.lua'
}

dependencies {
    'ox_lib'
}

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

client_script 'client.lua'