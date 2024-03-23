extends Node2D
var choice = 0;

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
				# SET MAJOR TO BUSINESS
				choice = 1
			elif choice == 2:
				# SET MAJOR TO CS
				choice = 2
			elif choice == 3:
				# SET MAJOR TO ED
				choice = 3
			elif choice == 4:
				# GO TO MAJOR DESCRIPTION SCENE
				choice = 4
			PlayerVariables.major = choice
			if choice < 4:
				get_tree().change_scene_to_file("res://scenes/dorm1_scene/dorm1.tscn")
			else:
				get_tree().change_scene_to_file("res://scenes/major_scene/major_desc/major_desc.tscn")
		elif event.pressed and event.keycode == KEY_DELETE or event.keycode == KEY_BACKSPACE:
			choice = 0;
		elif event.pressed and event.keycode == KEY_1 && choice == 0:
			choice = 1
		elif event.pressed and event.keycode == KEY_2 && choice == 0:
			choice = 2
		elif event.pressed and event.keycode == KEY_3 && choice == 0:
			choice = 3
		elif event.pressed and event.keycode == KEY_4 && choice == 0:
			choice = 4
