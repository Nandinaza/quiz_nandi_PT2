extends Sprite

signal klik

func _on_TouchScreenButton_pressed():
	emit_signal("klik")
