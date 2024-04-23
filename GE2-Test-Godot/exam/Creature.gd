extends Node

var boidPieces : Array[CSGBox3D] = []

var sin_size = 0.1

var max_freq = 180

func _ready():
	boidPieces = find_BoidPiece()
	
func _process(delta):
	for i in range(1, 180):
		for piece in boidPieces:
			piece.size = Vector3(1, 1 / i, 1)

func find_BoidPiece():
	var boidPartArray : Array[CSGBox3D] = []
	for i in find_children("*"):
		if i.is_in_group("boidPart"):
			boidPartArray.append(i.get_node(i.get_path()))
	return boidPartArray

func find_BoidHead():
	var boidHead
	boidHead = get_parent().find_child("boidHead")
	return boidHead
