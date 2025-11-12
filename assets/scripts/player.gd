extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0
@export var inventory: inventory


func _physics_process(_delta: float) -> void:
	# Add the gravity.
	#if not is_on_floor():
		#velocity += get_gravity() * delta

	# Handle jump.
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		#velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	var direction := Input.get_vector("moveLeft", "moveRight", "moveUp", "moveDown")
	velocity = SPEED * direction

	move_and_slide()
