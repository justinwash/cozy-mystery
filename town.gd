extends Node2D

var spawn_point


# Called when the node enters the scene tree for the first time.
func _ready():
	if spawn_point:
		$MainPC.global_position = spawn_point.global_position
	else:
		$MainPC.global_position = $SpawnPoint.global_position




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
