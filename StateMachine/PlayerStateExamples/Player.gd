class_name Player
extends KinematicBody2D

###Node initialization
onready var fsm := $StateMachine
onready var anim := $AnimatedSprite

var velocity
var speed: = 200.0
var jump: = 0.0
var health = 0
var dialog = Dialogic
export var gravity = 500
var dialogstarted := false

###Player stats
export var PlayerSpeed := 200.0
#export var PlayerJump := 200.0
#export(int) var MaxHealth := 3
#export var dashSpeed: = 500.0
#var dashing = false
#var NO_SLOPE = 64.0
#var DashAmount = 1
var nearitem := ""

func _on_Area2D_area_entered(area):
	nearitem = area.name

func _on_Area2D_area_exited(area):
	nearitem = ""
