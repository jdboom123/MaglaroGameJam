extends CharacterBody2D

@onready var animated_sprite_2d: AnimatedSprite2D = %AnimatedSprite2D

const SPEED = 150.0
var character_movement : Vector2


func _physics_process(delta: float) -> void:
	character_movement.x = Input.get_axis("left", "right")
	character_movement.y = Input.get_axis("up", "down")
	character_movement = character_movement.normalized()
	
	if character_movement.x < 0:
		animated_sprite_2d.flip_h = true
	if character_movement.x > 0:
		animated_sprite_2d.flip_h = false
	
	velocity = character_movement*SPEED
	if character_movement != Vector2.ZERO:
		animated_sprite_2d.play("run")
	else:
		animated_sprite_2d.play("idle")

	move_and_slide()
