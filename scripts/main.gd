extends Node2D


const PLATE_SCENE = preload("res://scenes/plate.tscn")
const THE_ROCK_SCENE = preload("res://scenes/the_rock.tscn")

func _on_heroi_game_over() -> void:
	print("game over")
	get_tree().call_deferred("reload_current_scene")


func _on_timer_timeout() -> void:
	var plate: Node2D = PLATE_SCENE.instantiate()
	
	var screen_size = get_viewport_rect().size
	
	plate.position = Vector2(randf_range(708, 128) , 0)
	
	add_child(plate)
	
 
func _on_timer_rock_timeout() -> void:
	var the_rock: Node2D = THE_ROCK_SCENE.instantiate()
	
	var screen_size = get_viewport_rect().size
	
	the_rock.position = Vector2(randf_range(816, 24) , 0)
	
	add_child(the_rock)
