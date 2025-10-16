extends Node

var last_answer_message: String = ""
var last_death_message: String = ""
var score: int = 0

func reset_score():
	score = 0

func increase_score():
	score += 1
	

func _process(delta):
	if Gamescore.score >= 5:
		if GameMode.mode == "time_trial":
			GameMode.timer_running = false
			GameMode.final_time = GameMode.time_elapsed
			get_tree().change_scene_to_file("res://scenes/results_screen.tscn")
		else:
			# Normal mode just continues or ends normally
			print("Normal mode finished.")
