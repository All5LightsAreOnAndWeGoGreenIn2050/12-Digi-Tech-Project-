extends Node

var levels = [
	"res://scenes/game1.tscn",
	"res://scenes/game2.tscn",
	"res://scenes/game3.tscn",
	"res://scenes/game4.tscn",
	"res://scenes/game5.tscn",
	"res://scenes/game6.tscn",
	"res://scenes/game7.tscn",
	"res://scenes/game8.tscn",
	"res://scenes/game9.tscn",
	"res://scenes/game10.tscn"
]
var current_level := 0

func go_to_next_level():
	current_level += 1
	if current_level >= levels.size():
		current_level = 0  # Loop back to the first level
	get_tree().change_scene_to_file(levels[current_level])
