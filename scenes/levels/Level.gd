extends Node2D

export var niveles: ArrayPackedScene

var _nivel_actual: int = 1
var _nivel_instanciado: Nodo



func _ready() -> void:
		_crear_nivel[_nivel_actual]


func _crear_nivel(numero_nivel)
