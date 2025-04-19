fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'Mythic Emergency Services'
author '[Alzar]'

client_scripts {
	'@mythic-pwnzor/client/check.lua',
    '@mythic-base/components/cl_error.lua',
	'client/**/*.lua',
}

server_scripts({
	'@oxmysql/lib/MySQL.lua',
	'server/**/*.lua',
})
