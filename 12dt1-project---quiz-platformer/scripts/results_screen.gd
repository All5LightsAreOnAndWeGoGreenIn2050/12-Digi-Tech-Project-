extends Control

@onready var final_timer_label = $FinalTimerLabel
@onready var main_menu_button = $MainMenuButton

func _ready():
	print("✅ Results screen loaded.")

	# Display the player's final completion time
	if GameMode:
		print("GameMode found. Final time:", GameMode.final_time)
		var final_time = GameMode.final_time
		if final_timer_label:
			final_timer_label.text = "Final Time: " + format_time(final_time)
		else:
			print("⚠️ Could not find FinalTimerLabel!")
	else:
		print("❌ GameMode autoload not found!")

	# Check for button
	if main_menu_button:
		print("✅ MainMenuButton found. Connecting signal.")
		main_menu_button.pressed.connect(_on_main_menu_button_pressed)
	else:
		print("❌ Could not find MainMenuButton!")

func format_time(seconds):
	var mins = int(seconds / 60)
	var secs = int(seconds) % 60
	var ms = int((seconds - int(seconds)) * 100)
	return "%02d:%02d.%02d" % [mins, secs, ms]

func _on_main_menu_button_pressed() -> void:
	print("✅ FINISHED PRESSED!")
	GameMode.time_elapsed = 0.0
	GameMode.final_time = 0.0
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
