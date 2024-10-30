extends CharacterBody2D


var speed=0
var spinning 

func _ready():
	spinning=true;
	speed=7
func _process(delta: float) -> void:
	if spinning==true:
			# Add the gravity.
			position.y+=speed
			#print("Spinning")
			if position.y>=100:
				#print_debug("Out of screen")
				position.y=-155;
	move_and_slide()

func StopMoving() ->void:
	#print("Stop moving function")
	spinning=false
func SpinWheel() ->void:
	#print("Stop moving function")
	if spinning==false:
		spinning=true
