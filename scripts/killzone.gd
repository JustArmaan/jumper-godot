extends Area2D

@onready var timer: Timer = $Timer
@onready var death_image: TextureRect = $CanvasLayer2/death_image

func _on_body_entered(body: Node2D) -> void:
	print("You Died")
	Engine.time_scale = 0.5
	death_image.visible = true
	timer.start()
	body.get_node("CollisionShape2D").queue_free()

func _on_timer_timeout() -> void:
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
