extends Node2D

onready var img = $Sprite

export var itemname := "Item name"
export var dialog := "dialog"
export var moodscore := 0

var triggered := false



func _on_Area2D_body_entered(body):
	print("Player entered")


func _on_Area2D_body_exited(body):
	print("Player exited")
