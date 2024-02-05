extends Node2D

onready var parent = get_parent().get_parent()
onready var nodes = get_parent()

func _ready():
	var bg = $bg
	bg.modulate = Color(1,0,0)

func salah():
	#kurangi hati
#	emit_signal("salah")
	parent.helloworld()
	pass

func _on_13_pressed():
	parent.change("level2")
	queue_free()
	#benar
	#get_tree().change_scene("res://levels/level_2/level_2.tscn")

func _on_16_pressed():
	salah()


func _on_18_pressed():
	salah()


func _on_11_pressed():
	salah()
