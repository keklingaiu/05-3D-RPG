extends KinematicBody

onready var Dialogue = get_node("/root/Game/UI/Dialogue")

var dialogue = [
	"Welcome to Bullseye Island! (Press E to continue)"
	,"You need to get your running shoes and shootin' glasses on for this challenge!"
	,"Shoot and destroy all the targets along with the enemy drone before time is up!"
	,"The Bullseye Island challenge starts as soon as you press E."
]


func _ready():
	$AnimationPlayer.play("Idle")
	Dialogue.connect("finished_dialogue", self, "finished")


func _on_Area_body_entered(_body):
	Dialogue.start_dialogue(dialogue)


func _on_Area_body_exited(_body):
	Dialogue.hide_dialogue()
	
func finished():
	get_node("/root/Game/Target_Container").show()
	Global.timer = 120
	Global.update_time()
	get_node("/root/Game/UI/Timer").start()
