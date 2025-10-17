extends Control


@onready var final_timer_label = $FinalTimerLabel

# Displays the players final completion time
func _ready():
	var final_time = GameMode.final_time
	final_timer_label.text = "Final Time: " + format_time(final_time)
# Converts seconds into a formatted time (Min, Sec, Ms)
# Returns time in the 00:00:00 format
func format_time(seconds):
	var mins = int(seconds / 60)
	var secs = int(seconds) % 60
	var ms = int((seconds - int(seconds)) * 100)
	return "%02d:%02d.%02d" % [mins, secs, ms]
	

func _on_main_menu_button_pressed() -> void:
	GameMode.time_elapsed = 0.0
	GameMode.final_time = 0.0
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
	print("finished")
