extends StaticBody2D


var speed = 75
func _process(delta):
	position.x -= speed * delta

func _on_area_2d_body_entered(body):
	if "Player" in body.name:
		body.queue_free()
