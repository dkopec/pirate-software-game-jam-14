extends Node2D

var start_game = false
var target = Vector2(320,130)
var action_tile_id = 0
onready var random = RandomNumberGenerator.new()

func _ready():
	print_debug("Level Ready")
	if(OS.is_debug_build()):
		$Timer.wait_time = 1

func _input(event):
	if start_game and (event is InputEventMouseButton or event is InputEventScreenTouch):
		# Get the postion of the click/touch
		target = event.position
		print_debug("Mouse/screen clicked at ", target)
		# Get the tile coordinates based on the event position
		var tile_coordinates = $TileMap.world_to_map(target)
		# Get the tile ID at the clicked position
		var current_tile_id = $TileMap.get_cellv(tile_coordinates)
		# Check if a tile is present at the clicked position
		var new_tile_id = action_tile_id
		$TileMap.set_cellv(tile_coordinates, new_tile_id)
		print_debug("Tile Clicked! Changed Tile ID from", current_tile_id, "to", new_tile_id, "at Coordinates:", tile_coordinates)

func get_neighbors(tile: Vector2):
	return PoolVector2Array([
		tile + Vector2.RIGHT,
		tile + Vector2.LEFT,
		tile + Vector2.DOWN,
		tile + Vector2.UP,
	])

func _on_Timer_timeout():
	var victims = PoolVector2Array([])
	for action_tile in $TileMap.get_used_cells_by_id(action_tile_id):
		print_debug("Action Tile", action_tile)
		var neighbors = get_neighbors(action_tile)
		var targets = PoolVector2Array([])
		for neighbor in neighbors:
			var neighbor_id = $TileMap.get_cellv(neighbor)
			if neighbor_id != action_tile_id and neighbor_id != -1:
				print_debug("Neighbor ", neighbor, " has id: ", neighbor_id, " not the action id: ", action_tile_id, " assigning as target.")
				targets.append(neighbor)
		var targets_num = targets.size()
		print_debug(targets_num, " targets found.")
		if targets_num > 0:
			random.randomize()
			var victim_index = random.randi_range(0, targets_num - 1)
			var victim = targets[victim_index]
			print_debug("The Victim is ", victim)
			$TileMap.set_cellv(victim, action_tile_id)
			victims.append(victim)
	if (victims.size() == 0):
		print_debug("No more victims left, player wins.")
		$Timer.stop()
		$WinMessage.visible = true
		start_game = false
		$VBoxContainer/Reset.visible = true


func _on_PlayButton_pressed():
	$Timer.start()
	$VBoxContainer/PlayButton.visible = false
	start_game = true


func _on_Reset_pressed():
	var _reset = get_tree().reload_current_scene()