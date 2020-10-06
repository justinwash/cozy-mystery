extends Node2D

export(NodePath) var player_path
onready var player = get_node(player_path)

onready var position_y = transform[2].y

var offset = 10

func _process(delta):
	self.scale = Vector2(player.transform[2].y * -0.01, player.transform[2].y * -0.01)
	self.transform[2].y = player.transform[2].y + (10 * offset)
