extends Control

func _on_normal_pressed() -> void:
	print("Normal")
	GameMode.mode = "normal"
	var result := get_tree().change_scene_to_file("res://scenes/game1.tscn")


func _on_time_trial_pressed() -> void:
	print("Time Trial")
	GameMode.mode = "time_trial"
	GameMode.time_elapsed = 0.0
	GameMode.timer_running = true 

	var result := get_tree().change_scene_to_file("res://scenes/game1.tscn")
	
