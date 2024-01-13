extends Node2D

var target = Vector2(320,130)
var action_tile_id = 0
onready var random = RandomNumberGenerator.new()

func _ready():
	print("Level Ready")
	
func _input(event):
	if event is InputEventMouseButton or event is InputEventScreenTouch:
		# Get the postion of the click/touch
		target = event.position
		print("Mouse/screen clicked at ", target)
		# Get the tile coordinates based on the event position
		var tile_coordinates = $TileMap.world_to_map(target)
		# Get the tile ID at the clicked position
		var current_tile_id = $TileMap.get_cellv(tile_coordinates)
		# Check if a tile is present at the clicked position
		var new_tile_id = action_tile_id
		$TileMap.set_cellv(tile_coordinates, new_tile_id)
		print("Tile Clicked! Changed Tile ID from", current_tile_id, "to", new_tile_id, "at Coordinates:", tile_coordinates)

func get_neighbors(tile):
	var x = tile.x
	var y = tile.y
	return [
		Vector2(x - 1, y),  # Left
		Vector2(x + 1, y),  # Right
		Vector2(x, y - 1),  # Up
		Vector2(x, y + 1)   # Down
	]

func _on_Timer_timeout():
	var victims = []
	for action_tile in $TileMap.get_used_cells_by_id(action_tile_id):
		print("Action Tile", action_tile)
		var neighbors = get_neighbors(action_tile)
		var targets = []
		for neighbor in neighbors:
			var neighbor_id = $TileMap.get_cellv(neighbor)
			if neighbor_id != action_tile_id and neighbor_id != -1:
				print("Neighbor ", neighbor, " has id: ", neighbor_id, " not the action id: ", action_tile_id, " assigning as target.")
				targets.append(neighbor)
		var targets_num = targets.size()
		print(targets_num, " targets found.")
		if targets_num > 0:
			random.randomize()
			var victim_index = random.randi_range(0, targets_num - 1)
			var victim = targets[victim_index]
			print("The Victim is ", victim)
			$TileMap.set_cellv(victim, action_tile_id)
			victims.append(victims)
	if (victims.size() == 0):
		print("No more victims left, player wins.")
		$Timer.paused = true
		$WinMessage.visible = true
	
