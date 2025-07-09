extends Node2D

signal score

var speed = 150

func _ready():
 
    $VisibleOnScreenNotifier2D.screen_exited.connect(queue_free)

func _process(delta):
    position.x -= speed * delta


func _on_score_area_body_entered(body):
    
    $ScoreArea/CollisionShape2D.disabled = true
    emit_signal("score")