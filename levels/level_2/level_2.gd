extends Node2D

onready var parent = get_parent().get_parent()
onready var nodes = get_parent()

func _on_13_pressed():
	salah()


func _on_16_pressed():
	salah()


func _on_sabtu_pressed():
	#get_tree().change_scene("res://levels/level_3/level_3.tscn")
	parent.change("level3")
	queue_free()


func _on_ahad_pressed():
	salah()
	
func salah():
	parent.helloworld()
	pass
