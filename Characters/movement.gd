extends CharacterBody2D
const SPEED = 300.0
const JUMP_VELOCITY = -600.0
@onready var sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
var array = [Input.get_connected_joypads()]
	

func PlayerId():
	var a = 1
	if (array[0] == 0):
		var b = 1
	elif (array[1] == 1):
		var b = 2


func _physics_process(delta: float) -> void:
	if (velocity.x > 1 || velocity.x < 1):
		sprite_2d.animation = "Run"
	else:
		sprite_2d.animation = "Idle"

	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
		sprite_2d.animation = "Jump"


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("Left P1", "Right P1")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
	var isleft =  velocity.x < 0
	sprite_2d.flip_h = isleft
	
	if Input.is_action_just_pressed("Jump P1") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
	if Input.is_action_just_pressed("Jump P2") and is_on_floor():
			velocity.y = JUMP_VELOCITY
