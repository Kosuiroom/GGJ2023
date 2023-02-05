extends Control

onready var startbtn = $MenuItems/StartButton
onready var audio = $AudioStreamPlayer
onready var rain= $rain


func _ready():
	startbtn.grab_focus()
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	rain.play()
	
	
func _on_StartButton_pressed():
	get_tree().change_scene("res://levels/FirstScene.tscn")


func _on_ExitButton_pressed():
	get_tree().quit()




