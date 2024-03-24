extends Node2D
var choice = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$EnergyTxt.text = "Energy: " + str(PlayerVariables.energy)
	var p = JourneyData.pace
	if p == 1:
		$PaceTxt.text = "Pace: Saunter"
	elif p == 2:
		$PaceTxt.text = "Pace: Steady"
	elif p == 3:
		$PaceTxt.text = "Pace: Sprint"
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_ENTER:
			if choice == 1:
				get_tree().change_scene_to_file("res://scenes/travel_scene/travel.tscn")
			elif choice == 2:
				get_tree().change_scene_to_file("res://scenes/map_scene/map.tscn")
			elif choice == 3:
				get_tree().change_scene_to_file("res://scenes/pace_scene/pace.tscn")
			elif choice == 4:
				get_tree().change_scene_to_file("res://scenes/travel_scene/travel_break/travel_talk/talk.tscn")
		elif event.pressed and event.keycode == KEY_1 and choice == 0:
			print(1)
			choice = 1
			$ChoiceTxt.text = "What is your choice? 1"
		elif event.pressed and event.keycode == KEY_2 and choice == 0:
			print(2)
			choice = 2
			$ChoiceTxt.text = "What is your choice? 2"
		elif event.pressed and event.keycode == KEY_3 and choice == 0:
			print(3)
			choice = 3
			$ChoiceTxt.text = "What is your choice? 3"
		elif event.pressed and event.keycode == KEY_4 and choice == 0:
			print(4)
			choice = 4
			$ChoiceTxt.text = "What is your choice? 4"
		elif event.pressed and event.keycode == KEY_DELETE or event.keycode == KEY_BACKSPACE:
			choice = 0
			$ChoiceTxt.text = "What is your choice? "
