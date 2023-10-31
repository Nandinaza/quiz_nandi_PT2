extends Node2D

onready var mer = [
	$merge1,
	$merge2
]

func _physics_process(delta):
	if Input.is_action_just_pressed("change_to_6"):
#		get_tree().change_scene()]
		print("ganti")
		
		
func delete_obj():
	print("tese")



func _on_Area2D_area_entered(area):
	mer[0].queue_free()
	mer[1].queue_free()
	var a = preload("res://levels/level_5/angka_50.tscn").instance()
	$".".add_child(a)
