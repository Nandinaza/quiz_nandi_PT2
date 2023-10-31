extends Node

onready var hati = Loader.Nyawa

func get_hati():
	return hati

func set_awal():
#	errase()
	write_data(3)
	
func _ready():
	hati = open_data()
	
func refresh(rd):
	write_data(rd)
	print("refresh is ",rd)
	hati = open_data()

func write_data(data):
	var file = File.new()
	file.open("res://levels/data.txt",File.WRITE)
	file.store_line(data)
	file.close()
	
func open_data() -> int:
	var a
	var file = File.new()
	file.open("res://levels/data.txt",File.READ)
	a = file.get_line()
	return a
	
func errase() -> void:
	var file = File.new()
	file.open("res://levels/data.txt", File.WRITE)
	file.store_line("")
	file.close()
