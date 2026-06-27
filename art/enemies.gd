extends Node2D

const SPEED = 60
var direction = -1
@onready var ray_cast_right = $RayCastright
@onready var ray_cast_left = $RayCastleft

func _process(delta: float) -> void:
	if ray_cast_right.is_colliding():
		var body = ray_cast_right.get_collider()
		if !body.is_in_group("player"):
			direction = -1
	if ray_cast_left.is_colliding():
		var body = ray_cast_left.get_collider()

		if !body.is_in_group("player"):
			direction = 1

	position.x += direction * SPEED * delta
