extends Node2D

onready var nodes = get_parent().get_parent()

func _on_TouchScreenButton_pressed():
	nodes.change("level8")
