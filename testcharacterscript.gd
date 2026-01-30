extends CharacterBody2D

@export var speed := 200
@export var gravity := 200

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta
	var direction := Input.get_axis("move_left", "move_right")
	velocity.x = direction * speed
	move_and_slide()
