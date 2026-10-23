extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if DataStorage.F == 1:
		var f1 = load("res://Characters/Ninja Frog.tscn")
		add_child(f1)
		f1.position = Vector2(100.0,100.0)
	if DataStorage.F == 2:
		pass
	if DataStorage.M == 1:
		var m1 = load("res://Characters/Mask Man.tscn")
		add_child(m1)
		m1.position = Vector2(100.0,100.0)
	if DataStorage.M == 2:
		pass
	if DataStorage.P == 1:
		pass
	if DataStorage.P == 2:
		pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
