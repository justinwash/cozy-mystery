extends Node

func enter(game):
	print('entered state: paused')
	
	game.ui.switch_panel('pause_panel')

func ready(_game):
	pass
	
func update(game, _delta):
	if Input.is_action_just_pressed("ui_cancel"):
		game.change_state('playing')
	
func physics_update(_game, _delta):
	pass

func process_input(_game, _delta):
	pass

func exit(_game):
	pass
