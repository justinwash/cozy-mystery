extends Node2D


func _physics_process(delta):
    if Input.is_action_just_pressed("journal"):
        $Journal.visible = !$Journal.visible
