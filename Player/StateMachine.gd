extends "res://utilities/finitestatemachine/finitestatemachine.gd"

func _ready():
	states = {
		"idle": $Idle,
		"walk": $Walk
	}
