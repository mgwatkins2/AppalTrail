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
			if choice == 1:
				get_tree().change_scene_to_file("res://scenes/start_scene/introduction.tscn")
			elif choice == 2:
				get_tree().change_scene_to_file("res://scenes/start_scene/info_dump.tscn")
		elif event.pressed and event.keycode == KEY_1 and choice == 0:
			choice = 1 
			$choiceTxt.text = "What is your choice? 1"
		elif event.pressed and event.keycode == KEY_2 and choice == 0:
			choice = 2
			$choiceTxt.text = "What is your choice? 2"
		elif event.pressed and event.keycode == KEY_DELETE or event.keycode == KEY_BACKSPACE:
			choice = 0
			$choiceTxt.text = "What is your choice? "
