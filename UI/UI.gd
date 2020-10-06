extends Node

onready var menus = {
		'main_menu': $UI/Menus/TitleScreen
	}

onready var panels = {
		
	}
	
func _ready():
	pass
	
func switch_panel(panel_name):
	if !panel_name:
		for panel in panels:
			panels[panel].visible = false
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	else:
		if panels[panel_name]:
			for panel in panels:
				panels[panel].visible = false
			panels[panel_name].visible = true
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		
func switch_menu(menu_name):
	if !menu_name:
		for menu in menus:
			menus[menu].visible = false
	else:
		if menus[menu_name]:
			for menu in menus:
				menus[menu].visible = false
			menus[menu_name].visible = true
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
