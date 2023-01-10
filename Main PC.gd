extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
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

  move_and_slide()
