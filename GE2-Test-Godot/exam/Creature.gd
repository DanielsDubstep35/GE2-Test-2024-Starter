extends Node

var boidPieces : Array[CSGBox3D] = []

var sin_size = 0.1

var max_freq = 180

func _ready():
	boidPieces = find_BoidPiece()
	
func _process(delta):
	for i in 90:
		for piece in boidPieces:
			var sine = sin(deg_to_rad(i))
			piece.scale.y = sine
			print("scale piece is: " + str(piece.scale.y))
			print("scale name is: " + str(piece.name))

func find_BoidPiece():
	var boidPartArray : Array[CSGBox3D] = []
	for i in find_children("*"):
		if i.is_in_group("boidPart"):
			boidPartArray.append(i)
	return boidPartArray

func find_BoidHead():
	var boidHead
	boidHead = get_parent().find_child("boidHead")
	return boidHead
