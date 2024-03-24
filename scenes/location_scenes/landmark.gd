extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	if JourneyData.nextLandmark == 0:
		$LandPic.texture = load("res://assets/graphics/pictures/dorm_pic.png")
		$LandPic.scale.x = 0.16
		$descTxt.text = "[center]It’s time to start on your Appalachian Trail! You’ll begin at your dorm. Good luck!\n\n[ Press Enter to Continue ][center]"
	elif JourneyData.nextLandmark == 1:
		$LandPic.texture = load("res://assets/graphics/pictures/river_street_pic.png")
		$LandPic.scale.x = 0.16
		$descTxt.text = "[center]River Street Crossing\n\n[ Press Enter to Continue ][center]"
	elif JourneyData.nextLandmark == 2:
		$LandPic.texture = load("res://assets/graphics/pictures/rankin_pic.png")
		$LandPic.scale.x = 0.16
		$descTxt.text = "[center]Rankin Hall\n\n[ Press Enter to Continue ][center]"
	elif JourneyData.nextLandmark == 3:
		$LandPic.texture = load("res://assets/graphics/pictures/belk_hall_picture.png")
		$LandPic.scale.x = 0.16
		$descTxt.text = "[center]Anne Belk Hall\n\n[ Press Enter to Continue ][center]"
	elif JourneyData.nextLandmark == 4:
		$LandPic.texture = load("res://assets/graphics/pictures/sanford_mall_pic.png")
		$LandPic.scale.x = 0.3
		$descTxt.text = "[center]Sanford Mall\n\n[ Press Enter to Continue ][center]"
	elif JourneyData.nextLandmark == 5:
		$LandPic.texture = load("res://assets/graphics/pictures/sanford_hall_pic.png")
		$LandPic.scale.x = 0.16
		$descTxt.text = "[center]Sanford Hall\n\n[ Press Enter to Continue ][center]"
	elif JourneyData.nextLandmark == 6:
		$LandPic.texture = load("res://assets/graphics/pictures/library_picture.png")
		$LandPic.scale = 0.16
		$descTxt.text = "[center]Anne Belk Library\n\n[ Press Enter to Continue ][center]"
	elif JourneyData.nextLandmark == 7:
		$LandPic.texture = load("res://assets/graphics/pictures/central_pic.png")
		$LandPic.scale = 0.16
		$descTxt.text = "[center]Central\n\n[ Press Enter to Continue ][center]"
	
	JourneyData.nextLandmark += 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
