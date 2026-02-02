extends Node

var score = 0

@onready var coins_label: Label = $"Coins Label"

func add_point():
	score += 1
	coins_label.text + "You collected " + str(score) + "coins"
	
func add_point_big():
	score += 5
	coins_label.text + "You collected " + str(score) + "coins"
