extends StaticBody3D

@export var speed = 10

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	move_and_collide(speed * delta * Vector3(1.0, 0.0, 0.0))
