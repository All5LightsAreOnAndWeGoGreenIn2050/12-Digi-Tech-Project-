extends Area2D

func _on_body_entered(body):
	if body.name == "Player":
		print("Death")
		Gamescore.reset_score()
		Gamescore.last_death_message = "You Died!"
		
		Levels.go_to_next_level()
