class_name Paddle extends CharacterBody3D

enum PLAYER {
	ONE,
	TWO
}

@export var speed: int = 20
@export var player = PLAYER.ONE

var up = "move_up_p1"
var down = "move_down_p1"

func _ready():
	match (player):
		PLAYER.ONE:
			up = "p1_move_up"
			down = "p1_move_down"
		PLAYER.TWO:
			up = "p2_move_up"
			down = "p2_move_down"

func _physics_process(delta):
	velocity = Vector3.ZERO
	if Input.is_action_pressed(up):
		velocity = velocity_from_direction(Vector3(0,0,-1))
	if Input.is_action_pressed(down):
		velocity = velocity_from_direction(Vector3(0,0,1))
	
	move_and_slide()

func velocity_from_direction(direction: Vector3):
	return direction * speed
