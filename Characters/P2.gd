extends CharacterBody2D
const SPEED = 300.0
const JUMP_VELOCITY = -600.0
var JumpCount = 0
var T = 1
@onready var sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


func _physics_process(delta: float) -> void:
	if (velocity.x > 1 || velocity.x < 1):
		sprite_2d.animation = "Run"
	else:
		sprite_2d.animation = "Idle"
		JumpCount = 0

	# Add the gravity.
	if JumpCount == 2:
		velocity += get_gravity() * delta
		sprite_2d.animation = "Jump 2"
	elif not is_on_floor():
		velocity += get_gravity() * delta
		sprite_2d.animation = "Jump"
	
	
	# Handle jump.
	if Input.is_action_just_pressed("Jump P2") and JumpCount < 2:
		velocity.y = JUMP_VELOCITY
		JumpCount += 1
	
	if Input.is_action_just_pressed("Jump P2") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	if Input.is_action_just_pressed("Light P2"):
		pass
	if Input.is_action_just_pressed("Medium P2"):
		pass
	if Input.is_action_just_pressed("Heavy P2"):
		pass
	if Input.is_action_just_pressed("Special P2"):
		pass
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("Left P2", "Right P2")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
	var isleft = velocity.x <= 0
	sprite_2d.flip_h = isleft
	
