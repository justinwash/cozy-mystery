extends Node

func enter(player):
	print("entered state idle")
	
func ready(_player):
	pass
	
func update(player, _delta):
	if Input.is_action_just_pressed("jump"):
		player.change_state("jump")
		
	if Input.is_action_pressed("move_forward") or \
	Input.is_action_pressed("move_backward") or \
	Input.is_action_pressed("move_left") or \
	Input.is_action_pressed("move_right"):
		player.change_state("walk")
	
	else: 
		player.dir = Vector3(0,0,0)
	
func physics_update(_player, _delta):
	pass

func process_input(_player, _delta):
	pass

func exit(_player):
	pass
