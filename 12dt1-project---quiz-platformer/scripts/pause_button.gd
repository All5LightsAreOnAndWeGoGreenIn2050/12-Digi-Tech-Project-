extends Control

# Unpauses game and hides the pause menu
func resume():
	get_tree().paused = false
	visible = false

# Pauses the game and shows the pause menu
func pause():
	get_tree().paused = true
	visible = true
	
# Detects keys Esc and P, to see if the user wants to pause
func testEsc():
	if Input.is_action_just_pressed("ui_cancel"):
		if get_tree().paused:
			resume()
		else:
			pause()


func _process(delta):
	testEsc()


func _on_resume_pressed() -> void:
	resume()


func _on_back_to_main_menu_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
