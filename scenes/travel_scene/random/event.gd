extends Node2D
var rand
var fail = false
# Called when the node enters the scene tree for the first time.
func _ready():
	rand = PlayerVariables.rnd.randi_range(1, 100)
	# RANDOM EVENTS!
	if rand <= 6:
		$randTxt.text = "Suddenly a bunch of nearly naked people appear in front of you. You realize it’s the neer’ly naked mile run. It looks like it goes on forever. You lose 10 minutes.\n\n[ Press Enter to Continue ]";
		PlayerVariables._add_time(10)
	elif rand <=16:
		$randTxt.text = "Out of nowhere Yosef appears and wants to take a picture with you for the school paper. You lose 5 minutes but feel pretty good about yourself.\n\n[ Press Enter to Continue ]"
		PlayerVariables._add_time(5)
	elif rand <=26:
		$randTxt.text = "As you are walking the Class President sees you and shakes your hand. You’re just that cool.\n\n[ Press Enter to Continue ]"
		PlayerVariables.energy += 8
	elif rand <=36:
		pass
	elif rand <= 48:
		$randTxt.text = "Somebody with a clipboard approaches you and asks you if you have registered to vote (you haven’t). They make you scan a QR code that doesn’t work. You lose a small amount of time.\n\n[ Press Enter to Continue ]"
		PlayerVariables._add_time(5)
	elif rand <= 60:
		$randTxt.text = "Somebody walking a gigantic golden retriever passes. You must stop to pet it. You lose a bit of time, but it was worth it!\n\n[ Press Enter to Continue ]"
		PlayerVariables._add_time(5)
		PlayerVariables.energy += 8
	elif rand <= 70:
		# CELSIUS!!!!!!
		$randTxt.text = "A girl handing out free Celsius throws one at you and you catch it! Your energy is boosted!"
		if (PlayerVariables.energy + 25) > 100 and PlayerVariables.cels == true:
			$randTxt.add_text("\n\nOops! Too much celsius for the day. Your heart basically explodes. Someone has to call an ambulance for you. GAME OVER.\n\n[ Press Enter to Continue ]")
			fail = true
		else:
			$randTxt.add_text("\n\n[ Press Enter to Continue ]")
			PlayerVariables.energy += 25
	elif rand <= 75:
		$randTxt.text = "The handmade fair is bustling when you pass by. A girl convinces you to buy a pair of cute earrings. You lost five dollars and some time.\n\n[ Press Enter to Continue ]"
		PlayerVariables._add_time(10)
		PlayerVariables.money -= 5
	elif rand <= 82:
		$randTxt.text = "Suddenly, the heavens open up. You are drenched and freezing. You lose some time.\n\n[ Press Enter to Continue ]"
		PlayerVariables._add_time(10)
	elif rand <= 90:
		$randTxt.text = "The wind is very strong. A sudden gust knocks you down to the ground. You lose some time.\n\n[ Press Enter to Continue ]"
		PlayerVariables._add_time(5)
	else:
		$randTxt.text = "There’s a 5 dollar bill on the ground! You’re rich!\n\n[ Press Enter to Continue ]"
		PlayerVariables.money += 5


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_ENTER or event.keycode == KEY_SPACE:
			if fail:
				pass
			else:
				get_tree().change_scene_to_file("res://scenes/travel_scene/travel.tscn")
