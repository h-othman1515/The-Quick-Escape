extends Control

func _on_retry_btn_pressed() -> void:
	get_tree().paused = false
	
	if GameData.current_level_path != "":
		get_tree().change_scene_to_file(GameData.current_level_path)
	else:
		print("ERROR: No level path saved")

func _on_menu_btn_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
