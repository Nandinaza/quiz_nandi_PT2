extends Node2D

onready var title = get_node("Title")
onready var button = get_node("botton")

func _on_play_pressed():
	title.texture = load("res://images/play_onClick.png")
	button.visible = false
