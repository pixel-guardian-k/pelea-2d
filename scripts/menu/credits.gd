extends Control

export var speed := 50

func _process(delta):
	rect_position.y -= speed * delta

	if rect_position.y < -rect_size.y:
		get_tree().change_scene("res://scenes/menu/MainMenu.tscn")
