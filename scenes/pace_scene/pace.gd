extends Node2D
var choice = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_ENTER:
			print("Enter Key!")
			if choice == 1:
				# SET PACE TO SLOW
				choice = 1
			elif choice == 2:
				# SET PACE TO MEDIUM
				choice = 2
			elif choice == 3:
				# SET PACE TO FAST
				choice = 3
			PlayerVariables.major = choice
			# Go to the travel scene
			JourneyData.pace = choice
			JourneyData.nextLandmark = 1
			get_tree().change_scene_to_file("res://scenes/location_scenes/dorm.tscn")
		elif event.pressed and event.keycode == KEY_DELETE or event.keycode == KEY_BACKSPACE:
			choice = 0;
		elif event.pressed and event.keycode == KEY_1 && choice == 0:
			choice = 1
		elif event.pressed and event.keycode == KEY_2 && choice == 0:
			choice = 2
		elif event.pressed and event.keycode == KEY_3 && choice == 0:
			choice = 3
