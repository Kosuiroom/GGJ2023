extends Node2D

onready var Iname = $itemname
const SHADER = preload("res://Items/items.tres")
onready var img := $Sprite

export var itemName := "Item name"
export var dialog := "dialog"
export var moodscore := 0

var triggered := false

func _ready():
	Iname.name = itemName

func _on_Area2D_body_entered(_body):
	print("body")
	img.material = SHADER

func _on_Area2D_body_exited(_body):
	print("exit body")
	img.material = null
