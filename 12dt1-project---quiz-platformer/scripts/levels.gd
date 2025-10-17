extends Node


const MAX_LEVELS = 10

# Stores all the levels
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

# Player advances to the next level in the sequence above 
# includes validation for a safety net just in case level arrays is empty
func go_to_next_level():
	if levels.size() == 0:
		push_error("No levels defined!")
		return
	current_level += 1
	if current_level >= levels.size():
		current_level = 0 # Loops back to the first level
	get_tree().change_scene_to_file(levels[current_level])
