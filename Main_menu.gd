extends Node2D

onready var title = get_node("Title")
onready var button = get_node("botton")
onready var animation = get_node("AnimationPlayer")
onready var timer = get_node("Timer")
onready var twn = get_node("About/Tween")

func _ready():
	$AnimationPlayer.play("polka1_animation")
	$About.position = Vector2(0,700)
#	twn.interpolate_property(
#		$About,"position",Vector2(0,0),Vector2.ZERO,0.5,Tween.TRANS_LINEAR,Tween.EASE_IN
#	)
#	twn.start()
func _on_play_pressed():
	title.texture = load("res://images/play_onClick.png")
	button.visible = false
	animation.play("play_animation")
	timer.start()
#	VarNyawa.set_awal()


func _on_Timer_timeout():
	#change scene
	get_tree().change_scene("res://Scene_loader.tscn")
	pass


func _on_about_pressed():
	twn.interpolate_property(
		$About,"position",Vector2(0,700),Vector2.ZERO,0.5,Tween.TRANS_LINEAR,Tween.EASE_IN
	)
	twn.start()
