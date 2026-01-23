extends Node
@onready var game_manager: Node = %GameManager
@onready var score_label: Label = $Label

var score = 0

func add_point():
	score += 1 
	score_label.text = "You collected " + str(score) + " coins."
