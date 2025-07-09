extends CharacterBody2D

const JUMP_VELOCITY = -350.0
var gravity = 980.0

func _physics_process(delta):
    if not is_on_floor():
        velocity.y += gravity * delta

    if Input.is_action_just_pressed("ui_accept"):
        velocity.y = JUMP_VELOCITY

    move_and_slide()