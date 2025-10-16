extends CanvasLayer


var time_elapsed := 0.0
var running := true

func _ready():
	# Make sure timer is hidden unless Time Trial mode
	if GameMode.mode == "time_trial":
		visible = true
	else:
		visible = false

func _process(delta):
	# Timer only updates if running AND in time_trial mode
	if GameMode.mode == "time_trial":
		if GameMode.timer_running:
			GameMode.time_elapsed += delta
			$TimerLabel.text = format_time(GameMode.time_elapsed)
		else: 
			$TimerLabel.text = format_time(GameMode.time_elapsed)
	else:
		visible = false

func format_time(seconds):
	var mins = int(seconds / 60)
	var secs = int(seconds) % 60
	var ms = int((seconds - int(seconds)) * 100)
	return "%02d:%02d.%02d" % [mins, secs, ms]
		
		
