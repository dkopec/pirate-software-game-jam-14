extends Node2D

var target = Vector2(320,130)

func _ready():
	print("Level Ready")
	pass # Replace with function body.
	
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
		var new_tile_id = 0
		$TileMap.set_cellv(tile_coordinates, new_tile_id)
		print("Tile Clicked! Changed Tile ID from", current_tile_id, "to", new_tile_id, "at Coordinates:", tile_coordinates)
