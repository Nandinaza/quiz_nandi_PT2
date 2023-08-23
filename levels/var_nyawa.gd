extends Node

var hati = 0

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
	file.store_32(data)
	file.close()
	
func open_data() -> int:
	var a = 0
	var file = File.new()
	file.open("res://levels/data.txt",File.READ)
	a = int(file.get_line())
	return a
	
func errase() -> void:
	var file = File.new()
	file.open("res://levels/data.txt", File.WRITE)
	file.store_line("")
	file.close()
