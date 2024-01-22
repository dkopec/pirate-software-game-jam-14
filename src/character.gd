extends KinematicBody2D

enum States { IDLE, FOLLOW }

var _path = []
var _target_point_world = Vector2()
var target_position = Vector2()

var state = States.IDLE

onready var game_started = get_parent().started

func _change_state(new_state):
	print_debug("State changed from ", state, " to ", new_state)
	if new_state == States.FOLLOW:
		_path = get_parent().get_node("TileMap").get_astar_path(position, target_position)
		if not _path or len(_path) == 1:
			_change_state(States.IDLE)
			return
		# The index 0 is the starting cell.
		# We don't want the character to move back to it in this example.
		_target_point_world = _path[1]
	state = new_state

func _ready():
	print_debug("Character is ready")
	_change_state(States.IDLE)

func _process(_delta):
	if state != States.FOLLOW:
		return
	print_debug("Moving")
	var _arrived_to_next_point = move_and_slide(_target_point_world)
	if _arrived_to_next_point:
		_path.remove(0)
		if len(_path) == 0:
			_change_state(States.IDLE)
			return
		_target_point_world = _path[0]
		
func move():
	var _arrived_to_next_point = move_and_slide(_target_point_world)
	if _arrived_to_next_point:
		_path.remove(0)
		if len(_path) == 0:
			_change_state(States.IDLE)
			return
		_target_point_world = _path[0]

func set_target(position: Vector2):
	target_position = position
	print_debug("Target for character set to:", target_position)
	_change_state(States.FOLLOW)
