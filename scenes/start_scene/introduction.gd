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
				$introTxt.text = "To make it to dinner you need to make it to all of your classes on time, with energy to spare and money to spend. The journey will test you with many difficult decisions and trials of fate. Make wise choices to reach your final destination. \n\n[ Press Enter to Continue ]"
			elif count == 1:
				get_tree().change_scene_to_file("res://scenes/major_scene/major.tscn")
