extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if DataStorage.F == 1:
		load("res://Characters/Mask Man.tscn")
	if DataStorage.F == 2:
		pass
	if DataStorage.M == 1:
		pass
	if DataStorage.M == 2:
		pass
	if DataStorage.P == 1:
		pass
	if DataStorage.P == 2:
		pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
