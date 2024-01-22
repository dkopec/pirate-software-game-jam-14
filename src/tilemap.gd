extends TileMap

const TRAVEL_TILE_ID = 0
const OBSTICLE_TILE_ID = 1
const START_TILE_ID = 2
const END_TILE_ID = 3

# The path start and end variables use setter methods.
# You can find them at the bottom of the script.
var path_start_position = Vector2() setget _set_path_start_position
var path_end_position = Vector2() setget _set_path_end_position

var _point_path = []

# You can only create an AStar node from code, not from the Scene tab.
onready var astar_node = AStar2D.new()

# get_used_cells_by_id is a method from the TileMap node.
# Here the id 0 corresponds to the grey tile, the obstacles.
onready var obstacles = get_used_cells_by_id(OBSTICLE_TILE_ID)
onready var map_size = get_used_rect().size
onready var _half_cell_size = cell_size / 2

func _ready():
	print_debug("Tilemap is ready")
	print_debug("Map Size is:", map_size )
	var walkable_cells = get_used_cells_by_id(TRAVEL_TILE_ID)
	print_debug("Walkable cells: ", walkable_cells)
	astar_add_walkable_cells(walkable_cells)
	astar_connect_walkable_cells(walkable_cells)

func calculate_point_index(point):
	var point_index = point.x + map_size.x * point.y
	print_debug("Index for ",point, " is ",  point_index)
	return point_index

# Loops through all cells within the map's bounds and
# adds all points to the astar_node, except the obstacles.
func astar_add_walkable_cells(walkable_cells = []):
	print_debug("Adding walkable cells.")
	for point in walkable_cells:
		# The AStar class references points with indices.
		# Using a function to calculate the index from a point's coordinates
		# ensures we always get the same index with the same input point.
		var point_index = calculate_point_index(point)
		astar_node.add_point(point_index, point)
		print_debug("Point ", point, "with index ", point_index, "added to astar.")
	
# Once you added all points to the AStar node, you've got to connect them.
# The points don't have to be on a grid: you can use this class
# to create walkable graphs however you'd like.
# It's a little harder to code at first, but works for 2d, 3d,
# orthogonal grids, hex grids, tower defense games...
func astar_connect_walkable_cells(points_array):
	print_debug("Connecting walkable cells.")
	for point in points_array:
		var point_index = calculate_point_index(point)
		# For every cell in the map, we check the one to the top, right.
		# left and bottom of it. If it's in the map and not an obstalce.
		# We connect the current point with it.
		var points_relative = PoolVector2Array([
			point + Vector2.RIGHT,
			point + Vector2.LEFT,
			point + Vector2.DOWN,
			point + Vector2.UP,
		])
		for point_relative in points_relative:
			var point_relative_index = calculate_point_index(point_relative)
			if is_outside_map_bounds(point_relative):
				continue
			if not astar_node.has_point(point_relative_index):
				continue
			# Note the 3rd argument. It tells the astar_node that we want the
			# connection to be bilateral: from point A to B and B to A.
			# If you set this value to false, it becomes a one-way path.
			# As we loop through all points we can set it to false.
			astar_node.connect_points(point_index, point_relative_index, false)


# Return if the point is within the map
func is_outside_map_bounds(point):
	var target_tile = world_to_map(point)
	var target_tile_id = get_cellv(target_tile)
	var is_outside_map_bounds =  target_tile_id == INVALID_CELL
	if is_outside_map_bounds:
		print_debug("Target Tile: ", target_tile, "is outside of map bounds.")
	else:
		print_debug("Target Tile: ", target_tile, "is inside of map bounds.")
	return is_outside_map_bounds
	

func _recalculate_path():
	print_debug("Recalulating Path")
	var start_point_index = calculate_point_index(path_start_position)
	var end_point_index = calculate_point_index(path_end_position)
	# This method gives us an array of points. Note you need the start and
	# end points' indices as input.
	_point_path = astar_node.get_point_path(start_point_index, end_point_index)
	# Redraw the lines and circles from the start to the end point.
	update()

# Setters for the start and end path values.
func _set_path_start_position(value: Vector2):
	print_debug("Request to set start postion to ", value)
	if value in obstacles:
		return
	if is_outside_map_bounds(value):
		return

	set_cell(path_start_position.x, path_start_position.y, START_TILE_ID)
	set_cell(value.x, value.y, END_TILE_ID)
	path_start_position = value
	if path_end_position and path_end_position != path_start_position:
		_recalculate_path()


func _set_path_end_position(value: Vector2):
	print_debug("Request to set end postion to ", value)
	if value in obstacles:
		return
	if is_outside_map_bounds(value):
		return

	set_cell(path_start_position.x, path_start_position.y, -1)
	set_cell(value.x, value.y, 2)
	path_end_position = value
	if path_start_position != value:
		_recalculate_path()

func get_astar_path(world_start, world_end):
	print_debug("Astar path requested from ", world_start, " to ", world_end)
	self.path_start_position = world_to_map(world_start)
	self.path_end_position = world_to_map(world_end)
	_recalculate_path()
	var path_world = []
	for point in _point_path:
		var point_world = map_to_world(Vector2(point.x, point.y)) + _half_cell_size
		path_world.append(point_world)
	return path_world

func get_neighbors(point: Vector2):
	var points_relative = PoolVector2Array([
			point + Vector2.RIGHT,
			point + Vector2.LEFT,
			point + Vector2.DOWN,
			point + Vector2.UP,
		])

# var victims = PoolVector2Array([])
#	for action_tile in $TileMap.get_used_cells_by_id(action_tile_id):
#		print_debug("Action Tile", action_tile)
#		var neighbors = get_neighbors(action_tile)
#		var targets = PoolVector2Array([])
#		for neighbor in neighbors:
#			var neighbor_id = $TileMap.get_cellv(neighbor)
#			if neighbor_id != action_tile_id and neighbor_id != -1:
#				print_debug("Neighbor ", neighbor, " has id: ", neighbor_id, " not the action id: ", action_tile_id, " assigning as target.")
#				targets.append(neighbor)
#		var targets_num = targets.size()
#		print_debug(targets_num, " targets found.")
#		if targets_num > 0:
#			random.randomize()
#			var victim_index = random.randi_range(0, targets_num - 1)
#			var victim = targets[victim_index]
#			print_debug("The Victim is ", victim)
#			$TileMap.set_cellv(victim, action_tile_id)
#			victims.append(victim)
#	if (victims.size() == 0):
#		print_debug("No more victims left, player wins.")
#		$Timer.stop()
#		$WinMessage.visible = true
#		start_game = false
#		$VBoxContainer/Reset.visible = true
