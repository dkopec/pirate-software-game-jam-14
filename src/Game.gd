extends Node2D

export var started = false

var target = Vector2(320,130)
var action_tile_id = 0
onready var random = RandomNumberGenerator.new()

func _ready():
	print_debug("Level Ready")
#	if(OS.is_debug_build()):
#		$Timer.wait_time = 1

func _process(_delta):
	if $Character.state != $Character.States.FOLLOW:
		return
	print_debug("Moving Character")
	$Character.move()

func _input(event):
	if started and (event is InputEventMouseButton or event is InputEventScreenTouch):
		# Get the postion of the click/touch
		var click_position = event.position
		print_debug("Mouse/screen clicked at ", click_position)
		$Character.set_target(click_position)

func _on_PlayButton_pressed():
	$VBoxContainer/PlayButton.visible = false
	started = true


func _on_Reset_pressed():
	var _reset = get_tree().reload_current_scene()
