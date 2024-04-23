extends Node3D

@export
var length = 5

@export
var frequency = 1

@export
var start_angle = 1

@export
var base_size: float = 1

@export
var multiplier: int = 5
var draw = DebugDraw3D

var sin_size = 1

var baseVector3D = Vector3(0, 0, 0)

#func _ready():
	#pass
	#
#func _process(delta):
	#on_draw_gizmos()
	#for i in 180:
		#sin_size = i/10
		#if i == 90 || i == 179:
			#pass
			

var boidPieces : Array[CSGBox3D] = []

var max_freq = 180

func _ready():
	#boidPieces = find_BoidPiece()
	pass
	
func _process(delta):
	find_BoidPiece()
	on_draw_gizmos()

func find_BoidPiece():
	#var boidPartArray : Array[CSGBox3D] = []
	for i in find_children("*"):
		if i.is_in_group("boidPiece"):
			#boidPartArray.append(i)
			sine_stuff(i)
	#return boidPartArray

func find_BoidHead():
	var boidHead : Boid
	boidHead = get_parent().find_child("boidHead")
	return boidHead

		
func on_draw_gizmos():
	var positionOfHead = find_BoidHead().global_position
	DebugDraw3D.draw_sphere(Vector3(positionOfHead.x, positionOfHead.y, positionOfHead.z + 8), sin_size, Color.RED, 0.01)


func sine_stuff(piece: CSGBox3D):
	for i in 90:
		#piece.scale.y = 0
		var sine = sin(deg_to_rad(i))
		piece.size.y = sine
		print("scale piece is: " + str(piece.size.y))
		print("scale name is: " + str(piece.name))
