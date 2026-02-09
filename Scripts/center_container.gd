extends CenterContainer

func _on_play_game_pressed() -> void:
	pass # Replace with function body.
	get_tree().change_scene_to_file("res://Scenes/driftlands.tscn")

func _on_quit_game_pressed() -> void:
	get_tree().quit()
