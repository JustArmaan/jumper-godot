extends Area2D

@onready var timer: Timer = $Timer
@onready var death_image: TextureRect = $CanvasLayer2/death_image

func _on_body_entered(body: Node2D) -> void:
	print("You Died")
	death_image.visible = true;
	timer.start()

func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
