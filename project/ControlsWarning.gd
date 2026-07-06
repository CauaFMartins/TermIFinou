extends Control


func _ready():
	set_process_input(true)


func _input(event):

	if event.is_action_pressed("ui_accept"):
		get_tree().change_scene("res://Scenes/MainScene.tscn")

	elif event is InputEventMouseButton:
		if event.pressed:
			get_tree().change_scene("res://project/MainScene.tscn")
