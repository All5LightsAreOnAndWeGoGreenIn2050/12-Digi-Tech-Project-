extends Control


@onready var final_timer_label = $FinalTimerLabel
@onready var main_menu_button = $MainMenuButton

func _ready():
	var final_time = GameMode.final_time
	final_timer_label.text = "Final Time: " + format_time(final_time)
	
	
	main_menu_button.text = "Back to Main Menu"
	main_menu_button.pressed.connect(_on_main_menu_pressed)

func format_time(seconds):
	var mins = int(seconds / 60)
	var secs = int(seconds) % 60
	var ms = int((seconds - int(seconds)) * 100)
	return "%02d:%02d.%02d" % [mins, secs, ms]

func _on_main_menu_pressed():
	GameMode.time_elapsed = 0.0
	GameMode.final_time = 0.0
	get_tree().change_scene_to_file("res://scenes/startscreen.tscn")
