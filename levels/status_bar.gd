extends Control

onready var level_data = get_node("level_data")
onready var jumlah_hati = get_node("jumlah_hati")
onready var jumhat = $jumhat

var nyawa = 3
var level = 1

func _ready():
	jumhat.text = str(nyawa)
	
func _physics_process(delta):
#	print(nyawa)
	pass

func set_level(nilai):
	level_data.text = "level " + str(nilai)
	
func kurangi_nyawa():
	nyawa -= 0.5
	jumhat.text = str(nyawa)
	if nyawa < 1:
		get_tree().change_scene("res://Game_over.tscn")
	print(nyawa)
#
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
