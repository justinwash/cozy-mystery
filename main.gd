extends Node2D

export var SKIP_TITLE = false

func _ready():
	if SKIP_TITLE:
		get_tree().change_scene("res://places/town/town.tscn")
	else:
		get_tree().change_scene("res://menus/titlescreen/titlescreen.tscn")
