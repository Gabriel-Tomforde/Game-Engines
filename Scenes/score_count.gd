extends Label

func _ready():
	GameManager.score_changed.connect(_on_score_changed)
	_on_score_changed(GameManager.score) # set initial text

func _on_score_changed(s: int) -> void:
	text = "You collected %d coins." % s
