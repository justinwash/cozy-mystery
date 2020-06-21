extends "res://utilities/finitestatemachine/state.gd"

func enter():
	.enter()

	print("walk")

func update(delta):
	if Input.is_action_pressed("ui_right"):
		actor.move_dir.x = 1
	elif Input.is_action_pressed("ui_left"):
		actor.move_dir.x = -1
	else:
		actor.move_dir.x = 0

	if Input.is_action_pressed("ui_up"):
		actor.move_dir.y = -1
	elif Input.is_action_pressed("ui_down"):
		actor.move_dir.y = 1
	else:
		actor.move_dir.y = 0

	actor.move_and_slide(Vector2(actor.move_dir.x, actor.move_dir.y).normalized() * actor.MOVE_SPEED, Vector2(0, -1))

	if actor.move_dir.x == 0 && actor.move_dir.y == 0:
		emit_signal("change_state", "idle")
