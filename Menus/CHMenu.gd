extends Node2D
var F = 0
var M = 0
var P = 0
var Ch = 0

func _ready() -> void: # Called when the node enters the scene tree for the first time.
	pass 

func _process(delta: float) -> void: # Called every frame. 'delta' is the elapsed time since the previous frame.
	if Ch == 2:
		get_tree().change_scene_to_file("res://Menus/Stage Menu.tscn")

func _on_frog_pressed():
	F += 1
	Ch += 1

func _on_mask_pressed():
	M += 1
	Ch += 1

func _on_pink_pressed():
	P += 1
	Ch += 1


func _on_back_pressed():
	Ch = 0
	get_tree().change_scene_to_file("res://Menus/Main Menu.tscn")
