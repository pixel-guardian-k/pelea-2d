extends Control

func _on_Jugar_pressed():
	get_tree().change_scene("res://scenes/levels/TestStage.tscn")

func _on_Options_pressed():
	get_tree().change_scene("res://scenes/menu/Options.tscn")

func _on_Credits_pressed():
	get_tree().change_scene("res://scenes/menu/Credits.tscn")

func _on_Quit_pressed():
	get_tree().quit()
