extends Node

signal score_changed(new_score: int)

var score := 0

func add_point():
	score += 1
	emit_signal("score_changed", score)

func add_big_point():
	score += 5
	emit_signal("score_changed", score)
