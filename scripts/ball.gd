extends StaticBody3D

@export var speed = 10
var velocity = Vector3(1.0, 0.0, 0.0)

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	var collision = move_and_collide(speed * delta * velocity)
	
	if collision:
		print(collision)
		print(collision.get_remainder())
		print(collision.get_normal())
#		velocity = collision.get_remainder().bounce(collision.get_normal())
		velocity = collision.get_normal()
		print(velocity)

		move_and_collide(velocity)
