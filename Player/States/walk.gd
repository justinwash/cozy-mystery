extends Node

func enter(player):
	print("entered state walk")
	
func ready(_player):
	pass
	
func update(player, delta):
	process_input(player, delta)
	
func physics_update(_player, _delta):
	pass

func process_input(player, _delta):
	if !(Input.is_action_pressed("move_forward") or \
	Input.is_action_pressed("move_backward") or \
	Input.is_action_pressed("move_left") or \
	Input.is_action_pressed("move_right")):
		player.change_state("idle")
# i hate this is there a better way?
	
	player.dir = Vector3()
	var cam_xform = player.camera.get_global_transform()

	var input_movement_vector = Vector2()

	if Input.is_action_pressed("move_forward"):
		input_movement_vector.y += 1
	if Input.is_action_pressed("move_backward"):
		input_movement_vector.y -= 1
	if Input.is_action_pressed("move_left"):
		input_movement_vector.x -= 1
	if Input.is_action_pressed("move_right"):
		input_movement_vector.x += 1	

	input_movement_vector = input_movement_vector.normalized()

	player.dir += -cam_xform.basis.z * input_movement_vector.y
	player.dir += cam_xform.basis.x * input_movement_vector.x

	if player.is_on_floor():
		if Input.is_action_just_pressed("jump"):
			player.change_state("jump")
	
func exit(_player):
	pass
