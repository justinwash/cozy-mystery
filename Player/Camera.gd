extends Camera

onready var target = get_node('../Mover/CameraAnchor')

func _process(delta):
	global_transform.origin = lerp(global_transform.origin, target.global_transform.origin, 0.1)
	
