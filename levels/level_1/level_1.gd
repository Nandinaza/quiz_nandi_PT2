extends Node2D

onready var status_bar = load("res://levels/status_bar.tscn")
var status

func _ready():
	var bg = $bg
	bg.modulate = Color(1,0,0)
	
	status = status_bar.instance()
	add_child(status)
	status.set_level(self.name)

func salah():
	#kurangi hati
	status.kurangi_nyawa()

func _on_13_pressed():
	#benar
	get_tree().change_scene("res://levels/level_2/level_2.tscn")


func _on_16_pressed():
	salah()
func _on_18_pressed():
	salah()
func _on_11_pressed():
	salah()
