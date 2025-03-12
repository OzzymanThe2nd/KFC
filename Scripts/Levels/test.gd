extends Node3D
var paused_by_pause_menu : bool = false

func _on_player_dead() -> void:
	$Player/CamNode3D/CanvasLayer/Deathscreen.visible = true
	get_tree().paused = true

func _input(event: InputEvent) -> void:
	if event is InputEventKey:
		if Input.is_action_just_pressed("pause"):
			if paused_by_pause_menu == false and get_tree().paused == false:
				get_tree().paused = true
				$"Pause Menu".visible = true
				paused_by_pause_menu = true
			elif paused_by_pause_menu == true and get_tree().paused == true:
				get_tree().paused = false
				$"Pause Menu".visible = false
				paused_by_pause_menu = false
