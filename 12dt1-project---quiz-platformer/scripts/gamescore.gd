extends Node

var last_answer_message: String = ""
var last_death_message: String = ""
var score: int = 0
const WIN_SCORE = 10

func reset_score():
	score = 0


func increase_score():
	score += 1
	
# Checks if the player is in Time Trial and stops a timer, showing the results screen.
func _process(delta): 
	if Gamescore.score >= WIN_SCORE:
		if GameMode.mode == "time_trial":
			GameMode.timer_running = false
			GameMode.final_time = GameMode.time_elapsed
			get_tree().change_scene_to_file("res://scenes/results_screen.tscn")
		else:
			print("Normal mode finished.")
