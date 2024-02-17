extends VBoxContainer

onready var label = $Label
onready var parent = get_parent().get_parent()
const jawaban_benar = "2000"

var c_value = ""

func change_c_value(nil):
	c_value = c_value + nil
	label.text = c_value

func _on_Button_pressed():
	var a = label.text
	if a == jawaban_benar:
		parent.change("level9")
		queue_free()
	else:
		parent.helloworld()
		c_value = ""
		
func _on_Button2_pressed():
	change_c_value("0")
#OS.show_virtual_keyboard() and OS.hide_virtual_keyboard() methods.
#You can also check if a virtual keyboard is available with OS.has_virtual_keyboard(), 
#if you need to do other things differently, whether an onscreen keyboard will be used or not. 


func _on_1_pressed():
	change_c_value("1")
func _on_2_pressed():
	change_c_value("2")
func _on_3_pressed():
	change_c_value("3")
func _on_4_pressed():
	change_c_value("4")
func _on_5_pressed():
	change_c_value("5")
func _on_6_pressed():
	change_c_value("6")
func _on_7_pressed():
	change_c_value("7")
func _on_8_pressed():
	change_c_value("8")
func _on_9_pressed():
	change_c_value("9")
func _on_kosong_pressed():
	change_c_value("0")



