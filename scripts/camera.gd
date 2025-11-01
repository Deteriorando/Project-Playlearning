extends Camera2D
var alvo = Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_alvo()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position = alvo.position
	
func get_alvo():
	var node = get_tree().get_nodes_in_group("pleyer")
	if node.size() == 0:
		push_error("pleyer not found")
		return
	alvo = node[0]
