extends Node2D

onready var parent = get_parent().get_parent()
onready var nodes = get_parent()

onready var mer = [
	$merge1,
	$merge2
]
	
func gantiscn():
	parent.change("level6")
	queue_free()
		
func _on_Area2D_area_entered(area):
	mer[0].queue_free()
	mer[1].queue_free()
	var a = preload("res://levels/level_5/angka_50.tscn").instance()
	$".".add_child(a)
	a.connect("klik",self,"gantiscn")

func _on_47_pressed():
	parent.helloworld()

func _on_95_pressed():
	parent.helloworld()

func _on_31_pressed():
	parent.helloworld()

func _on_19_pressed():
	parent.helloworld()
