extends Node2D
signal score
var speed = 150
func _process(delta):
	position.x -= speed * delta
	if position.x < -100: queue_free()
func _on_score_area_body_entered(body):
	emit_signal("score")

func _on_area_2d_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
