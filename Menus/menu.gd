extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _on_start_pressed():
	get_tree().change_scene_to_file("res://Menus/Character Menu.tscn")

func _on_options_pressed():
	get_tree().change_scene_to_file("res://Menus/controls menu.tscn")

func _on_quit_pressed():
	get_tree().quit()
