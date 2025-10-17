extends Control

# Puts the game on normal mode
func _on_normal_pressed() -> void:
	GameMode.mode = "normal"
	var result := get_tree().change_scene_to_file("res://scenes/game1.tscn")

# Puts the game on time trial mode and starts a timer
func _on_time_trial_pressed() -> void:
	GameMode.mode = "time_trial"
	GameMode.time_elapsed = 0.0
	GameMode.timer_running = true 

	var result := get_tree().change_scene_to_file("res://scenes/game1.tscn")
	
