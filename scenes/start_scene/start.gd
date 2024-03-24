extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	PlayerVariables


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_ENTER or event.keycode == KEY_SPACE:
			get_tree().change_scene_to_file("res://scenes/start_scene/open_choice.tscn")
