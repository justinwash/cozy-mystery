extends KinematicBody2D

const MOVE_SPEED = 100

var move_dir = {
	'x': 0,
	'y': 0
}

func _ready():
	print("loaded scene ", name)

# State management methods
var current_state
onready var states = {
	'idle': $States/Idle,
	'walk': $States/Walk
}
func _init_state(state_name):
	current_state = states.main_menu
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
