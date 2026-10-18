extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_grass_pressed() -> void:
	get_tree().change_scene_to_file("res://Levels/Grass.tscn")


func _on_stone_pressed() -> void:
	pass # Replace with function body.


func _on_sky_pressed() -> void:
	pass # Replace with function body.


func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://Menus/Character Menu.tscn")
