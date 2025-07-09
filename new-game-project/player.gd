extends CharacterBody2D

signal hit

const JUMP_VELOCITY = -350.0
var gravity = 980.0

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta

	if Input.is_action_just_pressed("ui_accept"):
		velocity.y = JUMP_VELOCITY

	var is_colliding = move_and_slide()
	if is_colliding:
		emit_signal("hit")
		set_physics_process(false)
