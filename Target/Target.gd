extends StaticBody

var speed = 0
var y_range = 5


func _ready():
	randomize()
	speed = (randf() * 0.05) + 0.001
	y_range = randi() % 10


func _physics_process(_delta):
	transform.origin.y += speed
	if transform.origin.y >= y_range:
		speed = abs(speed)*-1
	if transform.origin.y <= -y_range:
		speed = abs(speed)		

func die():
	Global.update_score(10)
	queue_free()
