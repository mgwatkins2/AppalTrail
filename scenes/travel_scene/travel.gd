extends Node2D
var x = 0
var y = -1
var mult
var buffer = 3
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
	
	if JourneyData.nextLandmark == 0:
		$LocIcon.texture = load("res://assets/graphics/icons/dorm_icon.png")
		$LocIcon.position.y = -100
	elif JourneyData.nextLandmark == 1:
		$LocIcon.texture = load("res://assets/graphics/icons/river_street_icon.png")
		$LocIcon.position.y = -102
	elif JourneyData.nextLandmark == 2:
		$LocIcon.texture = load("res://assets/graphics/icons/rankin_icon.png")
		$LocIcon.position.y = -95
	elif JourneyData.nextLandmark == 3:
		$LocIcon.texture = load("res://assets/graphics/icons/annebelk_icon.png")
		$LocIcon.position.y = -96
	elif JourneyData.nextLandmark == 4:
		$LocIcon.texture = load("res://assets/graphics/icons/sanford_mall_icon.png")
		$LocIcon.position.y = -87
	elif JourneyData.nextLandmark == 5:
		$LocIcon.texture = load("res://assets/graphics/icons/sanford_hall_icon.png")
		$LocIcon.position.y = -107
	elif JourneyData.nextLandmark == 6:
		$LocIcon.texture = load("res://assets/graphics/icons/library_icon.png")
		$LocIcon.position.y = -104
	elif JourneyData.nextLandmark == 5:
		$LocIcon.texture = load("res://assets/graphics/icons/central_icon.png")
		$LocIcon.position.y = -103
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	$LocIcon.position.x = -225 + (550 * JourneyData.distance/100)
	if JourneyData.distance <= 0:
		get_tree().change_scene_to_file("res://scenes/location_scenes/landmark.tscn")
	
	if buffer != 0:
		$guyMan.play("default")
	else:
		$guyMan.stop()
	
	x = x + (0.5 * _delta)
	if x >= (y+1):
		PlayerVariables.energy -= (1 * JourneyData.pace)
		PlayerVariables._prog_time()
		JourneyData.distance -= (10 * JourneyData.pace)
		
		if buffer == 0:
			buffer = 3
			get_tree().change_scene_to_file("res://scenes/travel_scene/random/event.tscn")
		else:
			buffer -= 1
		
		y += 1
	$TimeTxt.text = "Time: "+str(PlayerVariables.hour)+":"+str(PlayerVariables.minute)
	$EnergyTxt.text = "Energy: " + str(PlayerVariables.energy) + "/100"
	$DistanceTxt.text = "Distance: " + str(JourneyData.distance)
	if PlayerVariables.minute < 10:
		$TimeTxt.text = "Time: "+str(PlayerVariables.hour)+":0"+str(PlayerVariables.minute)
	else:
		$TimeTxt.text = "Time: "+str(PlayerVariables.hour)+":"+str(PlayerVariables.minute)
	
	if fmod(PlayerVariables.money, 1) == 0:
		$MoneyTxt.text = "Money: $"+str(PlayerVariables.money)+".00"
	else:
		$MoneyTxt.text = "Money: $"+str(PlayerVariables.money)
		


func _input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_ENTER or event.keycode == KEY_SPACE:
			get_tree().change_scene_to_file("res://scenes/travel_scene/travel_break/travel_break.tscn")
