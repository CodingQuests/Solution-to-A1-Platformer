extends Node

@onready var box = preload("res://Scenes/Box.tscn")

var rng = RandomNumberGenerator.new()
func _ready():
	$Timer.timeout.connect(_on_timer_timeout)

func _on_timer_timeout():
	var randomPos = rng.randi_range(100,140)
	var boxTemp = box.instantiate()
	boxTemp.position = Vector2(randomPos, 224)
	$Objects.add_child(boxTemp)
