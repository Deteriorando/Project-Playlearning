extends Area2D

func _on_body_entered(body: Node2D) -> void:
	print("Corpo detectado: ", body.name) # Isso deve aparecer no painel Output/Saída
	if body.is_in_group("pleyer"):
		print("GRUPO PLEYER DETECTADO!") # Isso deve aparecer
		get_tree().call_deferred("reload_current_scene")
