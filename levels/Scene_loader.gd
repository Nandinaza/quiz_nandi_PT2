extends CanvasLayer

#export var levels : Array = PackedScene

#onready var levels : PackedScene = {
#	"level1" : preload("res://levels/level_1/level_1.tscn"),
#	"level2" : preload("res://levels/level_2/level_2.tscn"),
#	"level3" : preload("res://levels/level_3/level_3.tscn"),
#	"level4" : preload("res://levels/level_4/level_4.tscn"),
#}

onready var level1 : PackedScene = preload("res://levels/level_1/level_1.tscn")
onready var level2 : PackedScene = preload("res://levels/level_2/level_2.tscn")
onready var level3 : PackedScene = preload("res://levels/level_3/level_3.tscn")
onready var level4 : PackedScene = preload("res://levels/level_4/level_4.tscn")
onready var level5 : PackedScene = preload("res://levels/level_5/Level 5.tscn")
onready var level6 : PackedScene = preload("res://levels/level_6/level_6.tscn")
onready var level7 : PackedScene = preload("res://levels/level_7/level 7.tscn")
onready var level8 : PackedScene = preload("res://levels/level_8/level 8.tscn")


onready var scn = get_node("scenes")
onready var statusbar = $status_bar

var levell = 2
var stat_bar 
var scenes_node

func helloworld():
	statusbar.kurangi_nyawa()
	print(statusbar.nyawa)

func _ready():
	scenes_node = $scenes
#	$status_bar.load_scene(lev[0])
	
	var naw = level1.instance()
	scn.add_child(naw)

func change(level):
	$status_bar.set_level(levell)
	levell += 1
	
	if level == "level2":
		var naw = level2.instance()
		scn.add_child(naw)
	if level == "level3":
		var naw = level3.instance()
		scn.add_child(naw)
	if level == "level4":
		var naw = level4.instance()
		scn.add_child(naw)
	if level == "level5":
		var naw = level5.instance()
		scn.add_child(naw)
	if level == "level6":
		var naw = level6.instance()
		scn.add_child(naw)
	if level == "level7":
		var naw = level7.instance()
		scn.add_child(naw)
	if level == "level8":
		var naw = level8.instance()
		scn.add_child(naw)
		statusbar.add_input_text_8()
#	if level == "level9":
#		var naw = level9.instance()
#		scn.add_child(naw)







