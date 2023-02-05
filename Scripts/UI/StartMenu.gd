extends Control

onready var startbtn = $MenuItems/StartButton




func _ready():
	startbtn.grab_focus()
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	
	
func _on_StartButton_pressed():
	get_tree().change_scene("res://levels/FirstScene.tscn")


func _on_ExitButton_pressed():
	get_tree().quit()


#func _on_Start_focus_exited():
#	Buttonsound.play()



#func _on_Exit_focus_exited():
	#Buttonsound.play()




