extends Control

onready var fullscreen_checkbox = $Panel/VBoxContainer/Pantalla/Fullscreen
onready var master_slider = $Panel/VBoxContainer/General/HSlider
onready var sfx_slider = $Panel/VBoxContainer/SFX/HSlider
onready var ui_slider = $Panel/VBoxContainer/UI/HSlider

func _ready():
	fullscreen_checkbox.pressed = OS.window_fullscreen

	master_slider.min_value = 0
	master_slider.max_value = 1
	master_slider.step = 0.01
	master_slider.value = db2linear(
		AudioServer.get_bus_volume_db(
			AudioServer.get_bus_index("Master")
		)
	)

	sfx_slider.min_value = 0
	sfx_slider.max_value = 1
	sfx_slider.step = 0.01
	sfx_slider.value = db2linear(
		AudioServer.get_bus_volume_db(
			AudioServer.get_bus_index("SFX")
		)
	)

	ui_slider.min_value = 0.8
	ui_slider.max_value = 1.5
	ui_slider.step = 0.05
	ui_slider.value = rect_scale.x

func _on_Return_pressed():
	get_tree().change_scene("res://scenes/menu/MainMenu.tscn")


func _on_Fullscreen_toggled(button_pressed):
	pass # Replace with function body.


func _on_HSlider_drag_ended(value_changed):
	pass # Replace with function body.


func _on_HSlider_changed():
	pass # Replace with function body.
