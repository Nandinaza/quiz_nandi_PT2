extends Node2D

onready var giga = $Giga_chad
onready var animation = $AnimationPlayer
onready var text = $text

var angka = [1,2,3,4,5,7,9,10,12,13,15,16,20,21,22]
var index = 0

onready var status_bar = load("res://levels/status_bar.tscn")
var status

func _ready():
	status = status_bar.instance()
	add_child(status)
	status.set_level(self.name)


func _on_TouchScreenButton_pressed():
	animation.play("hit_animation")
	increase()
func increase():
	if(angka[index] != 22):
		text.text = String(angka[index])
	else:
		index = -1
	index += 1


func _on_ok_button_pressed():
	if(angka[index] == 16):
		print("sebelas")
		get_tree().change_scene("res://levels/level_5/Level 5.tscn")
