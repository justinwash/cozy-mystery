extends KinematicBody2D

const MOVE_SPEED = 100

var move_dir = {
	'x': 0,
	'y': 0
}

func _ready():
	print("loaded scene ", name)

