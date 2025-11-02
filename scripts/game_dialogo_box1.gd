extends Node2D

var dialogo_box = preload("res://cenas/dialogo_box.tscn")
var inst = null

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"):
	
		inst = dialogo_box.instantiate()
		$ui_canvas/Controldocanvas.add_child(inst)
