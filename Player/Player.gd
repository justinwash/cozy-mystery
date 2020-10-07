extends KinematicBody

const GRAVITY = -20
const JUMP_SPEED = 7.5
const MAX_SPEED = 12
const ACCEL = 4.5
const DEACCEL= 16
const MAX_SLOPE_ANGLE = 40

var dir = Vector3()
var vel = Vector3()

onready var camera = $Camera

# Lifecycle methods
func _ready():
	_init_state('idle')
	print("loaded scene ", name)
	
func _process(delta):
	current_state.update(self, delta)
	_move(delta)
# Lifecycle methods

# Utility methods
func _move(delta):
	dir.y = 0
	dir = dir.normalized()

	vel.y += delta * GRAVITY * 1.1

	var hvel = vel
	hvel.y = 0

	var target = dir
	target *= MAX_SPEED

	var accel
	if dir.dot(hvel) > 0:
		accel = ACCEL
	else:
		accel = DEACCEL

	hvel = hvel.linear_interpolate(target, accel * delta)
	vel.x = hvel.x
	vel.z = hvel.z
	vel = move_and_slide(vel, Vector3(0, 1, 0), 0.05, 4, deg2rad(MAX_SLOPE_ANGLE))
# Utility methods

# State management methods
var current_state
onready var states = {
	'idle': $States/Idle,
	'walk': $States/Walk,
	'jump': $States/Jump
}
func _init_state(state_name):
	current_state = states[state_name]
	if current_state.has_method('ready'):
		current_state.ready(self)
	current_state.enter(self)

func change_state(state_name):
	current_state.exit(self)
	current_state = states[state_name]
	if current_state.has_method('ready'):
		current_state.ready(self)
	current_state.enter(self)
# State management methods
