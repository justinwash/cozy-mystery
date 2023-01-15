extends CharacterBody2D


const SPEED = 150.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var interactable = null

func _physics_process(delta):
	if Input.is_action_just_pressed("interact"):
		if interactable == "HouseDoor":
			get_tree().root.get_node("Town").queue_free()
			var inside_of_house = load("res://InsideOfHouse.tscn").instantiate()
			get_tree().root.add_child(inside_of_house)
		if interactable == "HouseInteriorDoor":
			get_tree().root.get_node("InsideOfHouse").queue_free()
			var town = load("res://Town.tscn").instantiate()
			town.spawn_point = town.get_node("House/HouseDoor")
			get_tree().root.add_child(town)
	var Horizontal_direction = Input.get_axis("move_left", "move_right")
	var Vertical_direction = Input.get_axis("move_up", "move_down")
	if Horizontal_direction:
		velocity.x = Horizontal_direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	if Vertical_direction:
		velocity.y = Vertical_direction * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	velocity = velocity.normalized() * SPEED
	move_and_slide()


func _on_area_2d_area_entered(area):
	interactable = area.name
