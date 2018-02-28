extends Control

func go_to_game():
	get_tree().change_scene("res://game.tscn")


func _on_play_pressed():
	go_to_game()