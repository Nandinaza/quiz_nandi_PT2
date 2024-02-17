extends Control

onready var level_data = get_node("level_data")
onready var jumlah_hati = get_node("jumlah_hati")
onready var jumhat = $jumhat

var nyawa = 3
var level = 1

func _ready():
	jumhat.text = str(nyawa)

func set_level(nilai):
	level_data.text = "level " + str(nilai)
	
func kurangi_nyawa():
	nyawa -= 0.1
	jumhat.text = str(nyawa)
	if nyawa < 1:
		get_tree().change_scene("res://Game_over.tscn")
	print(nyawa)

func add_input_text_8():
	if get_child_count() < 4:
		var block = preload("res://levels/level_8/VBoxContainer.tscn")
		var a = block.instance()
		add_child(a)
	elif get_child_count() == 4:
		print(get_child_count())
		set_level(8)
	
	
func refresh():
	pass
#	jumhat.text = str(nyawa)
	
#	if(nyawa == 3):
#		jumlah_hati.set_texture("res://images/number_of_heart/heart3.png")
#	if(nyawa == 2):
#		jumlah_hati.set_texture("res://images/number_of_heart/heart2.png")
#	if(nyawa == 1):
#		jumlah_hati.set_texture("res://images/number_of_heart/heart1.png")
#	if(nyawa == 3):
#		jumhat.text = 3
#	if(nyawa == 2):
#		jumhat.text = 8
#	if(nyawa == 1):
#		jumhat.text =8
#	pass
#func load_scene(a:PackedScene):
#	a.instance()
#	self.add_child(a)
#	print(a)
