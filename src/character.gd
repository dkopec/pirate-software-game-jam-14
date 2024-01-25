extends Node2D

enum States { IDLE, FOLLOW }

const MASS = 10.0
const ARRIVE_DISTANCE = 10.0

export(float) var speed = 200.0
var _state = States.IDLE

var _path = []
var _target_point_world = Vector2(position)
var _target_position = Vector2(position)

var _velocity = Vector2(position)

var last_click_time := 0
var double_click_threshold := 0.3

onready var _creeper = preload("res://Creeper.tscn")

func _ready():
	_change_state(States.IDLE)


func _process(_delta):
	if _state != States.FOLLOW:
		return
	var _arrived_to_next_point = _move_to(_target_point_world)
	if _arrived_to_next_point:
		_path.remove(0)
		if len(_path) == 0:
			_change_state(States.IDLE)
			return
		_target_point_world = _path[0]

func _unhandled_input(event):
	if event.is_action("click"):
		var global_mouse_pos = get_global_mouse_position()
		_target_position = get_global_mouse_position()
		_change_state(States.FOLLOW)
		get_process_delta_time()
		var current_time = OS.get_ticks_msec() / 1000.0
		if (current_time - last_click_time) < double_click_threshold:
			print_debug("Double click detected!")
			var tile_center = get_parent().get_node("TileMap").get_tile_center(_target_position)
			var tile_neighbors = get_parent().get_node("TileMap").get_tile_neighbors(_target_position)
			var creepers = _get_creepers()

			if creepers.size() > 0 and tile_center in creepers:
				print_debug("Creeper already detected")
				return

			var creeper_instance = _creeper.instance()
			creeper_instance.position = tile_center
			get_parent().add_child(creeper_instance)
			last_click_time = 0
		else:
			last_click_time = current_time

func _get_creepers():
	var target_scene_name = "Creeper"
	# Array to store positions
	var object_positions = []
	# Iterate through all child nodes of the parent
	var children = get_parent().get_children()
	for child in children:
		# Check if the child is an instance of the target object type
		if child.name.find(target_scene_name) :
			# Get the position of the object and add it to the array
			var object_position = child.position
			object_positions.append(object_position)
	return object_positions

func _move_to(world_position):
	var desired_velocity = (world_position - position).normalized() * speed
	var steering = desired_velocity - _velocity
	_velocity += steering / MASS
	position += _velocity * get_process_delta_time()
	rotation = _velocity.angle()
	return position.distance_to(world_position) < ARRIVE_DISTANCE


func _change_state(new_state):
	if new_state == States.FOLLOW:
		_path = get_parent().get_node("TileMap").get_astar_path(position, _target_position)
		if not _path or len(_path) == 1:
			_change_state(States.IDLE)
			return
		# The index 0 is the starting cell.
		# We don't want the character to move back to it in this example.
		_target_point_world = _path[1]
	_state = new_state
