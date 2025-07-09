extends Node2D
var pipe_scene = preload("res://pipe.tscn")
var score = 0
func _ready():
	$Player.hit.connect(_on_player_hit)
func _on_timer_timeout():
	var new_pipe = pipe_scene.instantiate()
	new_pipe.score.connect(_on_pipe_score)
	var y_pos = randf_range(200, 450)
	new_pipe.position = Vector2(get_viewport_rect().size.x + 50, y_pos)
	add_child(new_pipe)
func _on_pipe_score():
	score += 1
	$CanvasLayer/ScoreLabel.text = str(score)
func _on_player_hit():
	get_tree().paused = true
