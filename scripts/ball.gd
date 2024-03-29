extends StaticBody3D

@export var speed = 10
var velocity = Vector3(1.0, 0.0, 0.0)

@onready var texture = $MeshInstance3D

func _physics_process(delta):
	var collision = move_and_collide(speed * delta * velocity)
	
	if collision:
		var collider_position = collision.get_collider().position
		velocity = (position - collider_position).normalized()
	
#	texture.rotate_z(0.01)
	texture.rotate_x(0.02)
	texture.rotate_y(0.02)
