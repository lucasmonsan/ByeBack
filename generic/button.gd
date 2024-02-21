extends Button

var time = 0.0
var speed = 2.0
var original_position = Vector2()

func _ready():
	original_position = position

func _process(delta):
	time += delta * speed

	if time < 1.0:
		position = original_position + Vector2(1, 1)
	elif time < 2.0:
		position = original_position + Vector2(0, 1)
	else:
		position = original_position
		time = 0.0
