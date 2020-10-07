extends Node

func enter(player):
	print("entered state jump")
	player.vel.y = player.JUMP_SPEED
	
func ready(_player):
	pass
	
func update(player, delta):
	process_input(player, delta)
	
func physics_update(_player, _delta):
	pass

func process_input(player, _delta):
	if player.is_on_floor():
		if Input.is_action_pressed("jump"):
			player.vel.y = player.JUMP_SPEED
		else:
			player.change_state("idle")
	
func exit(_player):
	pass
