extends CharacterBody2D

const SPEED = 150.0
const JUMP_VELOCITY = -250.0

func _ready():
	# Hide all characters initially
	for child in get_children():
		if child is Sprite2D:
			child.visible = false

	# Match characters with character chosen.
	match SelectionCharacter.selected_character:
		"Shark":
			$SingleShark.visible = true
		"Fish":
			$SingleFish.visible = true
		"Chicken":
			$SingleChicken.visible = true
		"Penguin":
			$SinglePenguin.visible = true
		_:
			
			$SingleFish.visible = true


func _physics_process(delta: float) -> void:
	if not is_on_floor(): # Gravity
		velocity += get_gravity() * delta 


	if Input.is_action_just_pressed("ui_up") and is_on_floor(): # Jump
		velocity.y = JUMP_VELOCITY


	var direction := Input.get_axis("ui_left", "ui_right") # Left or Right movement
	if direction != 0:
		velocity.x = direction * SPEED
	else:
		velocity.x = 0

	move_and_slide()
