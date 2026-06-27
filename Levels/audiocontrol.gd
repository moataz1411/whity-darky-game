extends HSlider

@export var audio_bus_name: String

var audio_bus_id

func _ready():
	audio_bus_id = AudioServer.get_bus_index(audio_bus_name)
	value = db_to_linear(AudioServer.get_bus_volume_db(audio_bus_id)) * 100

func _on_value_changed(value: float) -> void:
	if value <= 0:
		AudioServer.set_bus_volume_db(audio_bus_id, -80)
	else:
		AudioServer.set_bus_volume_db(audio_bus_id, linear_to_db(value / 100.0))
