extends Node

export var SKIP_TITLE = false

onready var world = $World
onready var ui = $UI

var current_state
onready var states = {
	'main_menu': $States/MainMenu,
	'new_game': $States/NewGame
}

# Lifecycle methods
func _ready():
	_init_state('main_menu')
	
func _process(delta):
	current_state.update(self, delta)
# Lifecycle methods
	
# Flow methods
func _new_game():
	change_state('new_game')
# Flow methods
	
# State management methods
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
