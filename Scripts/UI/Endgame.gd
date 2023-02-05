extends Control

onready var startbtn = $MenuItems/Return
onready var Buttonsound = $Buttonsound
onready var moodscore = $MoodScoreResult

func _ready():
	startbtn.grab_focus()
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	if GlobalVariables.MoodScore as int >=40:
		moodscore.text = "You've started making the small steps towards a better life. Keep it up!"
	if GlobalVariables.MoodScore as int <=30:
		moodscore.text = "You're still stuck in your old ways and your 'roots' are still growing around you..."
		
func _on_Return_pressed():
	get_tree().change_scene("res://UI/Start.tscn")
