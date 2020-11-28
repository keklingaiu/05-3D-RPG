extends Spatial



func _ready():
	$AnimatedSprite3D.play()
	$CPUParticles.emitting = true


func _on_Timer_timeout():
	queue_free()
