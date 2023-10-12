extends Sprite2D




func _on_area_2d_body_entered(body):
  if body.name == "MainPC":
    get_node("/root/Town/MainPC/Camera2D/Dialog/DialogManager").visible = true
