extends Node2D

var altura: int = 280
var valor: float = 0.5
func _physics_process(delta: float) -> void:
	position.y += altura * delta

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
