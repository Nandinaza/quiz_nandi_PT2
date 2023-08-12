extends Node

var level = 0

func Helloworld():
	print("hello world")
	print("saya bego")

func set_level():
	level += 1
	print("the level is = ",level)
	return level
