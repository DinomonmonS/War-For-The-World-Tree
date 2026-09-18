#extends CharacterBody2D
#const SPEED = 300.0
#const JUMP_VELOCITY = -600.0
#var current_buttons = {}
#var previous_buttons = {}
#@onready var sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
#@export var device_id: int = 0
#
#
## Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#pass # Replace with function body.
#
#func get_horizontal() -> void:
	#var direction = 0.0
	##if Input.is_joy_button_pressed(device_id, JOY_BUTTON_DPAD_LEFT):
	#if Input.is_action_just_pressed("Left P1") and device_id == 0:
		#direction = -1.0
	##if Input.is_joy_button_pressed(device_id, JOY_BUTTON_DPAD_RIGHT):
	#if Input.is_action_just_pressed("Right P1") and device_id == 0:
		#direction = 1.0
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	##if (previous_buttons == current_buttons):
		##pass
	#if not is_on_floor():
		#velocity += get_gravity() * delta
		#sprite_2d.animation = "Jump"
	#get_horizontal()
#
#func button_pressed(button) -> bool:
	#return current_buttons.get(button, false)
