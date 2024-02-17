extends Node2D

onready var parent = get_parent().get_parent()

func _on_83_pressed():
	parent.helloworld()

func _on_50_pressed():
	parent.helloworld()

func _on_20_pressed():
	parent.helloworld()

func _on_76_pressed():
	parent.helloworld()


func _on_jawabanbenar_pressed():
	parent.change("level10")
	queue_free()
