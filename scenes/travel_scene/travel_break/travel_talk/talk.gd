extends Node2D

var dialogue = ["An old friend from high school says: \n\n\"Oh hey, I haven’t seen you in awhile. What’s your major now- oh actually sorry I’ve actually got something really important to get to so uh lets hang out… sometime.\"", "A professor whose class you’ve skipped for a week tells you:\n\n\"Hey there, I haven’t seen you in my class for a while. I hope everything is okay. If you would like to meet with me you can schedule my office hours. But I am worried about your performance in this course. There is still time to drop it.\"", "One of your coworkers says:\n\n\"Meredith called out tomorrow. I don’t know what we are going to do... And the machine broke AGAIN. It’s a disaster!\"", "A girl walking her cat tells you:\n\n\"Cats actually love walking on leashes. It’s terrible to let them outside unsupervised. Think of the bird population! This way, they can spend time outside without the risk.\"", "The resident slackline guy calls out to you:\n\n\"Come and try! You’ll be a natural! You know it's really good for increasing your awareness of your body and also enhances your perception of yourself. Everyone should be doing it!\"", "The campus preacher shouts:\n\n... something..?\n\nYou walk a little faster and turn up your music.", "The boy who never shows up to your 9am asks you:\n\n\"Heyyyyyy, do you think you could send me the notes before the midterm? You’re such a great student I’m sure you have way better notes than me...\"", "A person waiting to cross Rivers Street says:\n\n\"Heh, these lights always take forever, amiright? How about this weather, amiright? Ugh, finals, amiright?\"", "Walking past you overhear a freshman say:\n\n\"Dude, last night was crazy. I can’t even remember most of it. Some girl tried to open my protein powder I think.\"", "One of your peers says:\n\n\"Did you know we have a test next week???\""]

# Called when the node enters the scene tree for the first time.
func _ready():
	var randVal = PlayerVariables.rnd.randi_range(0, 10)
	$talkTxt.text = dialogue[randVal]


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_ENTER or event.keycode == KEY_SPACE:
			get_tree().change_scene_to_file("res://scenes/travel_scene/travel_break/travel_break.tscn")
