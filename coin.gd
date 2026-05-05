extends Node2D

var altura: int = 100
var valor: float = 0.5

func _ready() -> void:
	$Area2DCoin/AnimatedSprite2D.play("coinFlip")

func _physics_process(delta: float) -> void:
	position.y += altura * delta

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
