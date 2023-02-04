extends Node2D

onready var img = $Sprite
const SHADER = preload("res://Items/items.tres")

export var itemname := "Item name"
export var dialog := "dialog"
export var moodscore := 0

var triggered := false


func _on_Area2D_body_entered(body):
	img.material = SHADER
	if Input.is_action_pressed("interact"):
		print("Player inteacted with object")

func _on_Area2D_body_exited(body):
	img.material = null
