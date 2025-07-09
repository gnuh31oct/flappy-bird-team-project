extends Node2D
var speed = 150
func _process(delta):
    position.x -= speed * delta
    if position.x < -100: queue_free()