extends Control

@onready var mainbuttons: VBoxContainer = $mainbuttons
@onready var options: Panel = $options

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	mainbuttons.visible=true
	options.visible=false
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/level_1.tscn")


func _on_settings_pressed() -> void:
	mainbuttons.visible=false
	options.visible=true
	


func _on_exit_pressed() -> void:
	get_tree().quit()
	


func _on_back_pressed() -> void:
	_ready()
