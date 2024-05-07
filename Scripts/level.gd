extends TileMap


# Called when the node enters the scene tree for the first time.
func _ready():
	# Deixa os blocos colocados no layer 3 invisiveis
	set_layer_modulate(3, 0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
