extends Node2D
var choice = 0;

# Called when the node enters the scene tree for the first time.
func _ready():
	choice = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_ENTER:
			print("Enter Key!")
			print(choice)
			if choice == 4:
				get_tree().change_scene_to_file("res://scenes/major_scene/major_desc/major_desc.tscn")
			elif choice != 0:
				get_tree().change_scene_to_file("res://scenes/pace_scene/pace.tscn")
		elif event.pressed and event.keycode == KEY_DELETE or event.keycode == KEY_BACKSPACE:
			choice = 0;
			$choiceTxt.text = "What is your choice? "
		elif event.pressed and event.keycode == KEY_1 && choice == 0:
			choice = 1
			$choiceTxt.text = "What is your choice? 1"
		elif event.pressed and event.keycode == KEY_2 && choice == 0:
			choice = 2
			$choiceTxt.text = "What is your choice? 2"
		elif event.pressed and event.keycode == KEY_3 && choice == 0:
			choice = 3
			$choiceTxt.text = "What is your choice? 3"
		elif event.pressed and event.keycode == KEY_4 && choice == 0:
			choice = 4
			$choiceTxt.text = "What is your choice? 4"
