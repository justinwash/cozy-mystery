extends Node2D

var spawn_point

@export var char_scale = 0.002

@export var trigger_animation = false


# Called when the node enters the scene tree for the first time.
func _ready():
  if spawn_point:
    $MainPC.global_position = spawn_point.global_position
  else:
    $MainPC.global_position = $SpawnPoint.global_position


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
  pass


func _physics_process(_delta):
  $MainPC.scale = Vector2($MainPC.position.y * char_scale, $MainPC.position.y * char_scale)
