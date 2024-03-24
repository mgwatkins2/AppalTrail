extends Node2D
var choice = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	if PlayerVariables.pDone == false:
		$paceOptions.text = "Now decide what pace to start with. How fast you push yourself will affect how much energy you expend.  Make sure you make it to class on time but avoid running down your energy too rapidly. You will have opportunities later to buy energy drinks, but they’ll cost you. You will be able to change this at any point. \n \nSelect your pace: \n \t1. Saunter \n \t2. Steady \n \t3. Sprint"
	else:
		$paceOptions.text = "Select your pace: \n \t1. Saunter \n \t2. Steady \n \t3. Sprint"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_ENTER and choice > 0:
			print("Enter Key!")
			JourneyData.pace = choice
			JourneyData.nextLandmark = 1
			print("pDone: "+str(PlayerVariables.pDone))
			if PlayerVariables.pDone == false:
				PlayerVariables.pDone = true
				get_tree().change_scene_to_file("res://scenes/location_scenes/dorm.tscn")
			else:
				get_tree().change_scene_to_file("res://scenes/travel_scene/travel_break/travel_break.tscn")
		elif event.pressed and event.keycode == KEY_DELETE or event.keycode == KEY_BACKSPACE:
			choice = 0;
			$paceChoice.text = "What is your choice? "
		elif event.pressed and event.keycode == KEY_1 && choice == 0:
			choice = 1
			$paceChoice.text = "What is your choice? 1"
		elif event.pressed and event.keycode == KEY_2 && choice == 0:
			choice = 2
			$paceChoice.text = "What is your choice? 2"
		elif event.pressed and event.keycode == KEY_3 && choice == 0:
			choice = 3
			$paceChoice.text = "What is your choice? 3"
