extends Sprite

var original_position
var is_dragging = false
var batas = Vector2(80,100)
var minimal = Vector2(140,450)

signal merge

#hasilnya 19 31

func _ready():
	original_position = position

func _input(event):
	if event is InputEventScreenTouch:
		print(event.position)
		if event.is_pressed() and (event.position < batas):
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
