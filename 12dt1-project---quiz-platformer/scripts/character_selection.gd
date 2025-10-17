extends Control

func _on_character_chicken_pressed() -> void: # Chicken Icon
	SelectionCharacter.selected_character = "Chicken"
	get_tree().change_scene_to_file("res://scenes/game1.tscn")


func _on_character_fish_pressed() -> void:
	SelectionCharacter.selected_character = "Fish" # Fish Icon
	get_tree().change_scene_to_file("res://scenes/game1.tscn")


func _on_character_penguin_pressed() -> void:
	SelectionCharacter.selected_character = "Penguin" # Penguin Icon
	get_tree().change_scene_to_file("res://scenes/game1.tscn")


func _on_character_shark_pressed() -> void:
	SelectionCharacter.selected_character = "Shark" # Shark Icon
	get_tree().change_scene_to_file("res://scenes/game1.tscn")


func _on_main_menu_back_pressed() -> void: # Back to Main Menu
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
