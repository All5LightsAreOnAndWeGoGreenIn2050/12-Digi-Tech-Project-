extends CanvasLayer


var time_elapsed := 0.0
var running := true
const SECONDS_PER_MINUTE = 60
const MILISECONDS_IN_SECOND = 100

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
# Converts seconds into a formatted time (Min, Sec, Ms)
# Returns time in the 00:00:00 format
func format_time(seconds):
	var mins = int(seconds / SECONDS_PER_MINUTE)
	var secs = int(seconds) % SECONDS_PER_MINUTE
	var ms = int((seconds - int(seconds)) * MILISECONDS_IN_SECOND)
	return "%02d:%02d.%02d" % [mins, secs, ms]
		
		
