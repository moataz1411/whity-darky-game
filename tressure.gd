extends Area2D

@export var next_scene: String = "res://Levels/main_menu2.tscn"

func _on_body_entered(body: Node2D) -> void:
	print(body.name)

	if body.name != "Player":
		return

	get_tree().change_scene_to_file(next_scene)
