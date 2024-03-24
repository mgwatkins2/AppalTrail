extends Node2D
var count = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_ENTER or event.keycode == KEY_SPACE:
			if count == 0:
				count += 1
				$Info.text = "You will be faced with decisions that will affect your resources. Losing too much time will make you miss class, and you will be too busy to attend dinner with your friend. Running out of energy will force you to be too exhausted to make it to dinner. If you end the day with too little money you will not be able to afford to eat at the dining hall and will be forced to eat alone in your dorm. All of these factors will cause the game to end in failure. \n \n[ Press Enter to Continue ]"
			elif count == 1:
				count += 1
				$Info.text = "If you are able to make it to Central in time with money and energy you will succeed! \n \n[ Press Enter to Continue ]"
			elif count == 2:
				get_tree().change_scene_to_file("res://scenes/start_scene/open_choice.tscn")
