extends Control

onready var level_data = get_node("level_data")
onready var muaj = get_node("jumlah_hati")
onready var bg = [
	preload("res://images/number_of_heart/heart3.png"),
	preload("res://images/number_of_heart/heart2.png"),
	preload("res://images/number_of_heart/heart1.png")
]

var nyawa = 3

func _ready():
	refresh()

func set_level(nilai):
	return 0
	
func kurangi_nyawa():
	nyawa -= 1
	print(nyawa)
	refresh()
	
func refresh():
	if(nyawa == 3):
		muaj.set_texture(bg[0])
	if(nyawa == 2):
		muaj.set_texture(bg[1])
	if(nyawa == 1):
		muaj.set_texture(bg[2])

