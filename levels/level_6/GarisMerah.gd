extends Sprite

var original_position
var is_dragging = false
var touch = false
onready var timer = $"../Timer"

onready var parent = get_parent().get_parent().get_parent()

func _ready():
	original_position = position
	print(timer)
func _input(event):
	if event is InputEventScreenTouch:
		print(event.position)
		if event.is_pressed() and touch:
			start_drag()
		elif event.is_pressed() == false and event.get_index() == 0:
			stop_drag()
func start_drag():
	original_position = position
	is_dragging = true
func stop_drag():
	is_dragging = false
func _process(delta):
	if is_dragging:
		position = get_viewport().get_mouse_position()
func _on_TouchScreenButton_pressed():
	touch = true
func _on_TouchScreenButton_released():
	touch = false
func _on_Area2D_area_entered(area):
	print(area)
	timer.start()
func _on_Timer_timeout():
	parent.change("level7")
	print("slsls")
