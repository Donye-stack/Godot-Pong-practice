extends RigidBody2D

func _ready():
	apply_central_impulse(Vector2(-400, 0))

func _on_body_entered():
	if linear_velocity.length() < 50:
		apply_central_impulse(linear_velocity.normalized() * 100)
	if linear_velocity.normalized().y > 0.95:
		apply_central_impulse(Vector2(-500, 0))
		
		
	print(linear_velocity)
