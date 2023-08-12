extends Control

onready var level_data = get_node("level_data")

func _ready():
	var a = load("res://levels/Heart_system.gd")
	var b = a.new()
	b.set_level()
