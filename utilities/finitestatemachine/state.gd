extends Node

signal change_state(next_state_name)
var actor = null

func enter():
	actor = get_parent().actor

func exit():
	return

func update(delta):
	return
