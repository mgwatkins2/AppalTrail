extends Node2D
var rnd = RandomNumberGenerator.new()
var time = 0
var fun = 0
var confidence = 0
var money = 0.00
var appcard = true
var major = 0
var energy = 100
var timeProg = 5
var pDone = false

# Called when the node enters the scene tree for the first time.
func _ready():
	fun = rnd.randi_range(0, 50)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func setMajor(maj):
	major = maj
	if maj == 1:
		money = 20
	elif maj == 2:
		money = 15
	elif maj == 3:
		money = 10



