extends Node

func _ready():
  pass
  
func enter_map(map_name):
  if has_node("CurrentMap"):
    get_node("CurrentMap").queue_free()
  
  var next_map = load("res://World/Maps/"+map_name+"/"+map_name+".tscn").instantiate()
  next_map.name = "CurrentMap"
  add_child(next_map)
