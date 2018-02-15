extends Control

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	$exploder.connect("body_entered", self, "_on_exploder_body_entered")
	$pig_spawner.connect("pressed", self, "make_pig")
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_exploder_body_entered( body ):
	if body.is_in_group("pig"):
		body.explode()

func make_pig():
	var Pig = preload("res://pig.tscn")
	var new_pig = Pig.instance()
	new_pig.global_position = $pig_spawn.global_position
	add_child(new_pig)
	
