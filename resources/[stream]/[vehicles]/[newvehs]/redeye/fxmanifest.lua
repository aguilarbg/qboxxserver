fx_version 'adamant'

game 'gta5'

files {
    'audioconfig/*.dat151.rel',
    'audioconfig/*.dat54.rel',
    'sfx/**/*.awc',
	'data/**/carcols.meta',
	'data/**/carvariations.meta',
	'data/**/handling.meta',
	'data/**/vehicles.meta',
}

	data_file 'AUDIO_GAMEDATA' 'audioconfig/dodgehemihellcat_game.dat'
	data_file 'AUDIO_SOUNDDATA' 'audioconfig/dodgehemihellcat_sounds.dat'
	data_file 'AUDIO_WAVEPACK' 'sfx/dlc_dodgehemihellcat'
	data_file 'HANDLING_FILE'			'data/**/handling.meta'
	data_file 'VEHICLE_METADATA_FILE'	'data/**/vehicles.meta'
	data_file 'CARCOLS_FILE'			'data/**/carcols.meta'
	data_file 'VEHICLE_VARIATION_FILE'	'data/**/carvariations.meta'