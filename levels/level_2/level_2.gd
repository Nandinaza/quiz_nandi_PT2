extends Node2D

onready var status_bar = load("res://levels/status_bar.tscn")
var status

func _ready():
	status = status_bar.instance()
	add_child(status)
	status.set_level(self)

func _on_13_pressed():
	status.kurangi_nyawa()


func _on_16_pressed():
	status.kurangi_nyawa()


func _on_sabtu_pressed():
	get_tree().change_scene("res://levels/level_3/level_3.tscn")


func _on_ahad_pressed():
	status.kurangi_nyawa()
