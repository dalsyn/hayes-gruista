fx_version 'cerulean'
game 'gta5'

author 'generated'
description 'Hayes Auto - Gruista job resource'
version '1.0.0'

shared_script 'config.lua'

server_scripts {
    'server/main.lua'
}

client_scripts {
    'client/main.lua'
}

dependencies {
    'qb-core'
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/app.js',
    'html/style.css'
}
