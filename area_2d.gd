extends Area2D

var current_level = 1
const MAX_LEVEL = 5

func _on_body_entered(body):
	if body.name == "Player":
		call_deferred("next_level")

func next_level():
	current_level += 1

	if current_level <= MAX_LEVEL:
		get_tree().change_scene_to_file("res://Levels/level_" + str(current_level) + ".tscn")
	else:
		get_tree().change_scene_to_file("res://Levels/main_menu2.tscn")
