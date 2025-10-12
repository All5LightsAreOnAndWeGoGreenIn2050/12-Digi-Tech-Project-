extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	print("Death")
	Gamescore.reset_score()
	timer.start()
	Levels.go_to_next_level()
	

func _on_timer_timeout():
	get_tree().reload_current_scene()
