extends Node

var config := ConfigFile()
const CONFIG_PATH := "user://settings.cfg"

# Valores por defecto
var fullscreen := false
var master_volume := 1.0
var sfx_volume := 1.0
var ui_scale := 1.0

func load_settings():
	var err = config.load(CONFIG_PATH)
	if err != OK:
		save_settings()
		return

	fullscreen = config.get_value("video", "fullscreen", fullscreen)
	master_volume = config.get_value("audio", "master", master_volume)
	sfx_volume = config.get_value("audio", "sfx", sfx_volume)
	ui_scale = config.get_value("ui", "scale", ui_scale)

func save_settings():
	config.set_value("video", "fullscreen", fullscreen)
	config.set_value("audio", "master", master_volume)
	config.set_value("audio", "sfx", sfx_volume)
	config.set_value("ui", "scale", ui_scale)
	config.save(CONFIG_PATH)
