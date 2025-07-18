extends CharacterBody2D

const max_speed = 400
var accel = 1500
const friction = 600

var input = Vector2.ZERO

func _physics_process(delta):
	player_movement(delta)
func get_input():
	input.y = int(Input.is_action_pressed("Left")) - int(Input.is_action_pressed("Right"))
	return input.normalized()

func player_movement(delta):
	input = get_input()
	if input == Vector2.ZERO:
		if velocity.length() > (friction * delta):
			velocity -= velocity.normalized() * (friction * delta)
		else:
			velocity = Vector2.ZERO
	else:
		velocity += (input * accel * delta)
		velocity = velocity.limit_length(max_speed)
		
	move_and_slide()
	
func Debug():
	var speed = 100000
	
	print(speed)
