extends RigidBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

export (PackedScene) var Explosion = null 

func _ready():
	angular_velocity = 100 * randf()
	pass

func explode():
	# Create an explosion as my sibling
	var explosion_node = Explosion.instance()
	explosion_node.global_position = global_position
	get_parent().add_child(explosion_node)
	# Delete Myself
	
	queue_free()