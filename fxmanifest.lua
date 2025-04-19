fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'cm Emergency Services'
author '[Alzar]'

shared_scripts {
    '@ox_lib/init.lua',
}

client_scripts {
	'@cm-pwnzor/client/check.lua',
    '@mythic-base/components/cl_error.lua',
	'client/**/*.lua',
}

server_scripts({
	'@oxmysql/lib/MySQL.lua',
	'server/**/*.lua',
})
