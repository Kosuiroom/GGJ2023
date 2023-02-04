extends Node2D

onready var img = $Sprite
onready var Iname = $itemname
const SHADER = preload("res://Items/items.tres")

export var itemname := "Item name"
export var dialog := "dialog"
export var moodscore := 0

var triggered := false

func _ready():
	Iname.name = itemname

func _on_Area2D_body_entered(_body):
	img.material = SHADER

func _on_Area2D_body_exited(_body):
	img.material = null
