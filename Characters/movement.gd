#extends CharacterBody2D
#const SPEED = 300.0
#const JUMP_VELOCITY = -600.0
#var array = [Input.get_connected_joypads()]
#@onready var sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
#
#func _physics_process(delta: float) -> void:
	#var isleft =  velocity.x < 0
	#sprite_2d.flip_h = isleft
	#if (velocity.x > 1 || velocity.x < 1):
		#sprite_2d.animation = "Run"
	#else:
		#sprite_2d.animation = "Idle"
#
	## Add the gravity.
	#if not is_on_floor():
		#velocity += get_gravity() * delta
		#sprite_2d.animation = "Jump"
	#if (array[0] == 0): #Check if player is player 1
		#if Input.is_action_just_pressed("Jump P1") and is_on_floor():
			#velocity.y = JUMP_VELOCITY
#
	## Get the input direction and handle the movement/deceleration.
		#var direction := Input.get_axis("Left P1", "Right P1")
		#if direction:
			#velocity.x = direction * SPEED
		#else:
			#velocity.x = move_toward(velocity.x, 0, SPEED)
	#
	#if (array[1] == 1): #Check if player is player 2
		#if Input.is_action_just_pressed("Jump P2") and is_on_floor():
			#velocity.y = JUMP_VELOCITY
				#
		#var direction := Input.get_axis("Left P2", "Right P2")
		#if direction:
			#velocity.x = direction * SPEED
		#else:
			#velocity.x = move_toward(velocity.x, 0, SPEED)
#
	#move_and_slide()
	#
	#
	#
