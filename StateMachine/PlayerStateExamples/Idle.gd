extends PlayerState

func enter(_msg := {}) -> void:
	player.velocity = Vector2.ZERO

func physics_update(_delta: float) -> void:

	if player.dialogstarted == false:
		if Input.is_action_just_pressed("interact"):
			print("player.nearitem")
			player.dialogstarted = true
			print("player interacted with: ", player.nearitem)
			var dialog = Dialogic.start(player.nearitem)
			dialog.connect("timeline_end", self, 'after_dialog')
			add_child(dialog)
	
	if player.dialogstarted == false:
		if Input.is_action_pressed("ui_left") or Input.is_action_pressed("ui_right"):
			print("In dialog", player.dialogstarted)
			state_machine.transition_to("Run")

func after_dialog(timeline_name):
	print("Dialog ended")
	player.dialogstarted = false
	GlobalVariables.MoodScore = Dialogic.get_variable("Mood")
	print("moodscore ", GlobalVariables.MoodScore)
