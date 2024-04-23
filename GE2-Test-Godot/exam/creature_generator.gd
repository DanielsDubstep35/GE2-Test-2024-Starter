extends Node3D

var length = 5
var frequency = 1
var start_angle = 1
var base_size: float = 0
var multiplier: int = 5
var draw = DebugDraw3D

var sin_size = 1

var baseVector3D = Vector3(0, 0, 0)

func _ready():
	pass
	
func _process(delta):
	on_draw_gizmos()
	for i in 180:
		sin_size = i/10
		if i == 90 || i == 179:
			print(sin_size)
		
func on_draw_gizmos():
	DebugDraw3D.draw_sphere(Vector3.ZERO, sin_size, Color.RED, 5)
	DebugDraw3D.draw_box(Vector3.ZERO, Quaternion(5, 5, 5, 5), Vector3(sin_size, sin_size, sin_size), Color.SKY_BLUE, 5)
