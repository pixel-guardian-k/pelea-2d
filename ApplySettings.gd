func _ready():
	Settings.load_settings()

	OS.window_fullscreen = Settings.fullscreen

	AudioServer.set_bus_volume_db(
		AudioServer.get_bus_index("Master"),
		linear2db(Settings.master_volume)
	)

	AudioServer.set_bus_volume_db(
		AudioServer.get_bus_index("SFX"),
		linear2db(Settings.sfx_volume)
	)
