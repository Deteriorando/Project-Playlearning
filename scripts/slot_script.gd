extends Control

func _get_drag_data(at_position: Vector2):
	var data = {"texture": $sprite_item.texture}
	var preview = self.duplicate()
	if preview.has_node("Background"):
		preview.get_node("Background").hide()

		
	set_drag_preview(preview)
	set_empty_slot()
	return data

	
func set_empty_slot()-> void:
		$sprite_item.texture = null
	
func _can_drop_data(at_position: Vector2, data) -> bool:
	return true
	
func _drop_data(position: Vector2, data) -> void:
	$sprite_item.texture = data["texture"]
