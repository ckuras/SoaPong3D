extends StaticBody3D

@export var speed = 10
var velocity = Vector3(1.0, 0.0, 0.0)

func _physics_process(delta):
	var collision = move_and_collide(speed * delta * velocity)
	
	if collision:
		var collider_position = collision.get_collider().position
		velocity = (position - collider_position).normalized()
