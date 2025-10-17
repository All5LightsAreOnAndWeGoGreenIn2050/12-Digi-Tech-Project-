extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass 


func _process(delta: float) -> void:
	pass


func _on_start_pressed(): #Goes to the start screen, where it asks you for Normal or Time Trial mode
	get_tree().change_scene_to_file("res://scenes/startscreen.tscn")


func _on_characters_pressed() -> void: # Allows you to choose your own character
	get_tree().change_scene_to_file("res://scenes/character_selection.tscn")


func _on_how_to_play_pressed() -> void: # Gives you instructions on how to play
	get_tree().change_scene_to_file("res://scenes/howtoplay.tscn")


func _on_statistics_pressed() -> void: # Gives you some of your statistics.
	get_tree().change_scene_to_file("res://scenes/stats.tscn")


func _on_exit_pressed() -> void:
	get_tree().quit()
