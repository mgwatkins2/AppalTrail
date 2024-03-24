extends Node2D
var x = 0
var y = -1
var mult
var buffer = 4
# Called when the node enters the scene tree for the first time.
func _ready():
	if JourneyData.pace == 1:
		$PaceTxt.text = "Pace: Saunter"
	elif JourneyData.pace == 2:
		$PaceTxt.text = "Pace: Steady"
	else:
		$PaceTxt.text = "Pace: Sprint"
	
	if JourneyData.weather == 0:
		$WeatherTxt.text = "Weather: Clear"
	elif JourneyData.weather == 1:
		$WeatherTxt.text = "Weather: Windy"
	elif JourneyData.weather == 2:
		$WeatherTxt.text = "Weather: Rainy"
	
	$TimeTxt.text = "Time: "+str(PlayerVariables.hour)+":"+str(PlayerVariables.minute)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	# X = X + (Y * Delta)
	x = x + (0.5 * _delta)
	if x >= (y+1):
		PlayerVariables.energy -= (1 * JourneyData.pace)
		PlayerVariables._prog_time()
		
		if buffer == 0:
			buffer = 4
			get_tree().change_scene_to_file("res://scenes/travel_scene/random/event.tscn")
		else:
			buffer -= 1
		
		y += 1
	print(x)
	$TimeTxt.text = "Time: "+str(PlayerVariables.hour)+":"+str(PlayerVariables.minute)
	$EnergyTxt.text = "Energy: " + str(PlayerVariables.energy) + "/100"


func _input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_ENTER or event.keycode == KEY_SPACE:
			get_tree().change_scene_to_file("res://scenes/travel_scene/travel_break/travel_break.tscn")
