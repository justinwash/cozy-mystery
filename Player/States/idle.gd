extends "res://utilities/finitestatemachine/state.gd"

func enter():
	.enter()

	print("idle")

func update(delta):
	if Input.is_action_pressed("ui_right") || Input.is_action_pressed("ui_left"):
		emit_signal("change_state", "walk")
	if Input.is_action_pressed("ui_up") || Input.is_action_pressed("ui_down"):
		emit_signal("change_state", "walk")
