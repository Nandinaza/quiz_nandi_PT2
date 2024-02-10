extends Node2D

onready var lineedit = $CenterContainer/VBoxContainer/LineEdit
onready var parent = get_parent().get_parent()
const jawaban_benar = "2000"

func _ready():
	$VBoxContainer
	self.connect("press",self,"tester")

func _on_Button_pressed():
	var a = lineedit.text
	if a == jawaban_benar:
		parent.change("level9")
		pass
	else:
		parent.helloworld()
		pass
func tester():
	print("ok")
