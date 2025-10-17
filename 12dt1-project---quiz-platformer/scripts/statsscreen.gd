extends Control

# Displays the players best score
func _ready():
	$NormalHighScoreLabel.text = "Highest Score: %d" % Stats.normal_highscore
	$TimeTrialTimeLabel.text = "Fastest Time: %s" % format_time(Stats.time_trial_best_time)

	$BackButton.pressed.connect(_on_BackButton_pressed)
# Converts seconds into a formatted time (Min, Sec, Ms)
# Returns time in the 00:00:00 format
func format_time(seconds):
	var mins = int(seconds / 60)
	var secs = int(seconds) % 60
	var ms = int((seconds - int(seconds)) * 100)
	return "%02d:%02d.%02d" % [mins, secs, ms]

# Go back to main menu
func _on_BackButton_pressed():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
