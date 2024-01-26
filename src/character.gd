extends Node2D

enum States { IDLE, FOLLOW }

const MASS = 10.0
const ARRIVE_DISTANCE = 10.0

export(float) var speed = 100.0
var _state = States.IDLE

var _path = []

onready var _target = get_parent().get_node("Target")
var _target_point_world = Vector2(position)
var _target_position = Vector2(position)

var _velocity = Vector2(position)

onready var _creeper = preload("res://Creeper.tscn")

onready var _powerup = get_parent().get_node("PowerUp")

var _spawn_creeper = false
var _occupied_by_creepers = []

func _ready():
	_change_state(States.IDLE)

func _process(_delta):
	var character_tile = get_parent().get_node("TileMap").get_tile_center(position)
	var powerup_tile = get_parent().get_node("TileMap").get_tile_center(_powerup.position)
	if character_tile == powerup_tile:
		speed += 10
		_powerup.position = Vector2(999,999)
	if _state != States.FOLLOW:
		return
	var _arrived_to_next_point = _move_to(_target_point_world)
	if _arrived_to_next_point:
		_path.remove(0)
		if len(_path) == 0:
			if _spawn_creeper:
				_set_creeper(_target_point_world)
			_target.position = Vector2(999,999)
			_change_state(States.IDLE)
			return
		_target_point_world = _path[0]

func _unhandled_input(event):
	if event.is_action("click"):
		get_parent().get_node("StartMessage").visible = false
		_target_position = get_global_mouse_position()
		_change_state(States.FOLLOW)
		_spawn_creeper = true
		_set_target(get_global_mouse_position())
		

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
	
func _set_target(point: Vector2):
	var tile_center = get_parent().get_node("TileMap").get_tile_center(point)
	_target.position = tile_center
	
func _set_creeper(point: Vector2):
	var tile_center = get_parent().get_node("TileMap").get_tile_center(point)
	var tile_neighbors = get_parent().get_node("TileMap").get_tile_neighbors(point)
	if _occupied_by_creepers.size() > 0 and tile_center in _occupied_by_creepers:
		print_debug("Creeper already detected")
		return
	var creeper_instance = _creeper.instance()
	creeper_instance.position = tile_center
	get_parent().add_child(creeper_instance)
	_occupied_by_creepers.append(tile_center)
	_spawn_creeper = false
	

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


func _on_Timer_timeout():
	_powerup.position = get_parent().get_node("TileMap").get_random_spawn()

	
