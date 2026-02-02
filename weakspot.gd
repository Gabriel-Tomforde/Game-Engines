extends Area2D


func _on_body_entered(body):
	print("Slime Killed")
	queue_free()
