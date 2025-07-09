extends Node2D

var speed = 150


func _ready():
	
	
	$VisibleOnScreenNotifier2D.screen_exited.connect(queue_free)

func _process(delta):
	
	position.x -= speed * delta
