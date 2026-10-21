extends Node2D


func _ready() -> void: # Called when the node enters the scene tree for the first time.
	pass

func _process(delta: float) -> void: # Called every frame. 'delta' is the elapsed time since the previous frame.
	if DataStorage.Ch == 2:
		get_tree().change_scene_to_file("res://Menus/Stage Menu.tscn")

func _on_frog_pressed():
	DataStorage.F += 1
	DataStorage.Ch += 1

func _on_mask_pressed():
	DataStorage.M += 1
	DataStorage.Ch += 1

func _on_pink_pressed():
	DataStorage.P += 1
	DataStorage.Ch += 1

func _on_button_pressed() -> void:
	DataStorage.Ch = 0
	get_tree().change_scene_to_file("res://Menus/Main Menu.tscn")
