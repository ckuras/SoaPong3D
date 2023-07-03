extends GutTest

var paddle = preload("res://scripts/paddle.gd")
var _paddle: Paddle

func before_each():
	_paddle = paddle.new()
	_paddle.speed = 10
	_paddle.position = Vector3.ZERO

func after_each():
	_paddle.free()

func test_get_velocity_from_up_direction():
	var velocity = _paddle.velocity_from_direction(Vector3.FORWARD)
	
	assert_eq(Vector3(0,0,-10), velocity)

func test_get_velocity_from_down_direction():
	var velocity = _paddle.velocity_from_direction(Vector3.BACK)
	
	assert_eq(Vector3(0,0,10), velocity)
