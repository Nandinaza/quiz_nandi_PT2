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

#func loadss():
#	var levelsc = levels["level1"]
#	levelsc.instance()#	
#	add_child(levelsc)onready var level2 : PackedScene = preload("res://levels/level_2/level_2.tscn")















