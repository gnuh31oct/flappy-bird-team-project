extends Node2D
var pipe_scene = preload("res://pipe.tscn")
func _on_timer_timeout():
	var new_pipe = pipe_scene.instantiate()
	var y_pos = randf_range(200, 450)
	new_pipe.position = Vector2(get_viewport_rect().size.x + 50, y_pos)
	add_child(new_pipe)
