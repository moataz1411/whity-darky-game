extends Area2D

func _on_body_entered(body):
	if body.name == "Player":
		call_deferred("next_level")

func next_level():
	Global.current_level += 1

	if Global.current_level <= Global.MAX_LEVEL:
		get_tree().change_scene_to_file("res://Levels/level_" + str(Global.current_level) + ".tscn")
	else:
		get_tree().change_scene_to_file("res://Levels/main_menu2.tscn")
