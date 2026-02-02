extends Node2D

const SPEED = 40

var direction = 1

@onready var ray_cast_2d_left: RayCast2D = $"RayCast2D Left"
@onready var ray_cast_2d_right: RayCast2D = $"RayCast2D Right"
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_2d_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = true
	if ray_cast_2d_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = false
	
	position.x += direction * SPEED * delta

func _on_area_2d_body_entered(body):
	if body.is_in_group("Player") and body.velocity.y > 0:
		body.velocity.y = -250  # bounce
		queue_free()            # kill enemy


func _on_weakspot_body_entered(body):
	if body.is_in_group("Player") and body.velocity.y > 0:
		body.velocity.y = -250  # bounce
		queue_free()            # kill enemy
