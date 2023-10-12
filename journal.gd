extends Control


func _physics_process(delta):
    if Input.is_action_just_pressed("journal"):
        visible = !visible
