extends Node2D

onready var lines = $lines

var pressed := false
onready var current_line : Line2D

var nilai = [true,0,0]
var valid = true

func _input(event: InputEvent) -> void:
	if event is InputEventScreenTouch:
		hitung(event.position)
		print(event.position)
		pressed = event.pressed
		
		if pressed:
			current_line = Line2D.new()
			current_line.default_color = Color.black
			current_line.width = 9.0
			lines.add_child(current_line)
	if event is InputEventScreenDrag && pressed:
		current_line.add_point(event.position)
func hitung(awal):
	if nilai[0] == true :
		nilai[1] = awal
		nilai[0] = !nilai[0]
		print("a")
		if(current_line):
			current_line.queue_free()
			$Sprite2.position = Vector2(166,180)
	else :
		nilai[2] = awal
		nilai[0] = !nilai[0]
		print("b")
			


func _on_Area2D_draw():
	print("kena")

func _on_Area2D2_body_entered(body):
	valid = false

func _on_finish_body_entered(body):
	var a = body.name
	print(a)
	if(a && valid):
		get_tree().change_scene("res://levels/level_4/level_4.tscn")
