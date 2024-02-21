extends Node

func _hide(node): node.modulate = Color("FFF0")
func _show(node, speed = 0.5):
	SAVE._step_once()
	var show = get_tree().create_tween().set_ease(Tween.EASE_IN_OUT)
	show.tween_property(node, "modulate", Color("FFF"), speed)
	await get_tree().create_timer(speed).timeout
	SAVE._next_step()
