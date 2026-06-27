extends Area2D

func _on_body_entered(body):
	if body is CharacterBody2D:
		Global.scene += 1

		if Global.scene > 5:
			Global.scene = 1

		get_tree().change_scene_to_file("res://Levels/level_" + str(Global.scene) + ".tscn")
