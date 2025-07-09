extends Node2D

signal score

var speed = 150

func _ready():
	# Kết nối tín hiệu khi ra khỏi màn hình để tự hủy
	$VisibleOnScreenNotifier2D.screen_exited.connect(queue_free)

func _process(delta):
	position.x -= speed * delta

# Hàm này sẽ được kết nối với Area2D
func _on_score_area_body_entered(body):
	# Để tránh tính điểm 2 lần, tắt va chạm của vùng tính điểm ngay khi nó được kích hoạt
	$ScoreArea/CollisionShape2D.disabled = true
	emit_signal("score")
