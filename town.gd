extends Node2D

var spawn_point

@export var trigger_animation = false


# Called when the node enters the scene tree for the first time.
func _ready():
  if trigger_animation == true:
    $AnimationPlayer.play("The first cut scene this town has ever seen")
    trigger_animation = false
  elif spawn_point:
    $MainPC.global_position = spawn_point.global_position
  else:
    $MainPC.global_position = $SpawnPoint.global_position




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
  pass
