extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event.pressed and event.keycode == KEY_ENTER or event.keycode == KEY_SPACE:
		get_tree().change_scene_to_file("res://scenes/major_scene/major.tscn")
