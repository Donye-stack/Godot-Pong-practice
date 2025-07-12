extends CharacterBody2D

@onready var Speed = 100
@onready var Dir = Vector2.LEFT

func Ball_movement(delta):
	velocity = Dir * delta * Speed
	
