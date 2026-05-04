extends CharacterBody2D

signal game_over

const SPEED = 80.0
const JUMP_VELOCITY = -600.0


func _physics_process(delta: float) -> void:
	
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	if Input.is_action_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
	elif Input.is_action_pressed("ui_left"):
	
		position.x -= SPEED/10
		$AnimationPlayer.play("andar")
		$Sprite2D.flip_h = true
	elif Input.is_action_pressed("ui_right"):
		position.x += SPEED/10
		$Sprite2D.flip_h = false
		$AnimationPlayer.play("andar")
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()


func _on_area_2d_area_entered(area: Area2D) -> void:
	game_over.emit()
