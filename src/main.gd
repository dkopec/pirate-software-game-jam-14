extends Node2D

var level = load("res://level.tscn")

func _ready():
	print(str("Game Ready")) 

func _on_PlayButton_pressed():
	print(str("Play Button pressed."))
	var new_game = level.instance()
	add_child(new_game)
