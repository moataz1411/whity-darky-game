extends CanvasLayer

var pause_toggle = false

func _ready() -> void:
	self.visible=false
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("pause"):
		pause_and_unpause()
func pause_and_unpause():
	pause_toggle=!pause_toggle
	get_tree().paused = pause_toggle
	self.visible = pause_toggle


func _on_button_pressed() -> void:
	pause_toggle=false
	get_tree().paused=false
	visible=false


func _on_button_2_pressed() -> void:
	get_tree().paused=false
	pause_toggle=false
	get_tree().reload_current_scene()
	


func _on_button_3_pressed() -> void:
	get_tree().paused=false
	pause_toggle=false
	get_tree().change_scene_to_file("res://Levels/main_menu.tscn")
