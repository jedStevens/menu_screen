extends Control

var percentage = 0

var steps = ["Downloading Data...", "Preparing Game...", "Loading World...", "Loading Server...", "Done!"]


func _ready():
	set_process(true)

func _process(time):
	percentage += time * 5
	
	var info =  min(int(percentage / 25), len(steps))
	
	get_node("progress_info").text = steps[info]
	
	get_node("progress").value = percentage
	
	if get_node("progress").value == get_node("progress").max_value:
		get_tree().change_scene("res://game.tscn")
		