extends Node2D
var time = 0
var fun = 0
var confidence = 0
var money = 0.00
var appcard = true
var weather = 0
var major = 0
var timeProg = 5

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# Sets major variable
func _set_major(maj):
	major = maj

# Changes the weather
func _set_weather(wet):
	weather = wet

# Adds or subtracts from confidence
func _mod_confidence(modCon):
	confidence += modCon

# Sets appcard value to false
func _loss_card():
	appcard = false

# Progresses the time
func _progress_time():
	time += timeProg;



