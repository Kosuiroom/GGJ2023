extends Node2D

onready var kitchcam = $kitchenkamera
onready var bathcam = $bathcamera
onready var bedcam = $bedcamera
onready var audio = $AudioStreamPlayer2D
var inkitch := true
var inbed := false
var inbath := false

func _ready():
	audio.play()

func _on_tobath_body_exited(body):
	if body.name == 'Player' && inkitch == false && inbath == true:
		inkitch = true
		inbath = false
		kitchcam.current = true
	else:
		inkitch = false
		inbath = true
		bathcam.current = true

func _on_tobed_body_exited(body):
	if body.name == 'Player' && inbed == true && inkitch == false:
		inkitch = true
		inbed = false
		kitchcam.current = true
	else:	
		inkitch = false
		inbed = true
		bedcam.current = true
