extends Node2D

onready var label = $Control/VBoxContainer/Label
onready var parent = get_parent().get_parent()
const jawaban_benar = "2000"
	
func _on_Button_pressed():
	var a = label.text
	if a == jawaban_benar:
		parent.change("level9")
	else:
		parent.helloworld()
