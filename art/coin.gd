extends Area2D
@onready var game_manager: Node = %gamemanager
@onready var animation_player = $AnimationPlayer

func _on_body_entered(body: Node2D) -> void:
	print(body.name)

	if body.name != "Player":
		return
	game_manager.add_point()
	animation_player.play("pickup")
