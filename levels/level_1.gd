extends Node2D

func _ready():
	var bg = $bg
	bg.modulate = Color(1,0,0)

func salah():
	#kurangi hati
	print("Wrong")

func _on_13_pressed():
	#benar
	get_tree().change_scene("res://levels/level_2.tscn")


func _on_16_pressed():
	salah()


func _on_18_pressed():
	salah()


func _on_11_pressed():
	salah()