extends CharacterBody2D

@export_category("Stats")
@export var speed: int = 400

var move_direction: Vector2 = Vector2.ZERO

func _physics_process(delta: float) -> void:
	movement_loop()

func movement_loop() -> void:
	move_direction.x = int(Input.is_action_pressed("direita")) - int(Input.is_action_pressed("esquerda"))
	move_direction.y = int(Input.is_action_pressed("baixo")) - int(Input.is_action_pressed("cima"))
	var motion: Vector2 = move_direction.normalized() * speed
	set_velocity(motion)
	move_and_slide()
