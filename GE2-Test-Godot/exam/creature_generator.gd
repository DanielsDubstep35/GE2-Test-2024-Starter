extends Node3D

var length = 5
var frequency
var start_angle
var base_size: float = 0
var multiplier = 2
var draw = DebugDraw3D

var baseVector3D = Vector3(0, 0, 0)

func _ready():
	pass
	
func _process(delta):
	on_draw_gizmos()
	for i in 180:
		base_size = i/10
		if i == 90 || i == 179:
			print(base_size)
		
func on_draw_gizmos():
	DebugDraw3D.draw_sphere(Vector3.ZERO, base_size, Color.RED, 5)
	DebugDraw3D.draw_box(Vector3.ZERO, Quaternion(5, 5, 5, 5), Vector3(base_size, base_size, base_size), Color.SKY_BLUE, 5)
