class_name Personaje
extends KinematicBody2D

export var gravity = 100
export var jump_speed = 100
export var speed = 100
var _muerto: bool

#Declaramos identifier "velocity"
var velocity = Vector2.ZERO

func _ready():
	pass
	

func _physics_process(delta):
	if _muerto:
		return
	
	#horizontal
	var direction = Input.get_axis("izquierda", "derecha")
	velocity.x = speed * direction
	
	#gravedad
	if not is_on_floor():
		velocity.y = velocity.y + gravity * delta
		
	#saltar
	var jump_pressed = Input.is_action_just_pressed("saltar")
	if jump_pressed:
		velocity.y = velocity.y - jump_speed
	
	move_and_slide(velocity)


func _on_Area2D_body_entered(body: Node2D) -> void:
	#animacion.modulate = Color(18.892, 0.0, 0.0, 1.0)
	_muerto = true
