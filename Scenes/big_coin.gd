extends Area2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _on_body_entered(_body):
	GameManager.add_big_point()
	animation_player.play("PickupBig")



	
