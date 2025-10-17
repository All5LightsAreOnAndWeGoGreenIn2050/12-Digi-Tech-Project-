extends Area2D

# When the player hits the death area, they will respawn to the next level and score will reset (to 0)
func _on_body_entered(body):
	if body.name == "Player":
		Gamescore.reset_score()
		
		Levels.go_to_next_level()
