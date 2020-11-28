extends Control


func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	var t_m = floor(Global.timer/60.0)
	var t_s = Global.timer % 60
	var t = ": %02d" % t_m
	t += ":%02d" % t_s
	$Label.text = "You won! Your final score was: " + str(Global.score) + " with a time of" + str(t)


func _on_Play_pressed():
	get_tree().change_scene("res://Game.tscn")
	Global.reset()


func _on_Quit_pressed():
	get_tree().quit()
