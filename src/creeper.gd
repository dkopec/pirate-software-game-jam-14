extends Position2D

onready var _time_start = OS.get_unix_time()
var infection_interval = 10

#func _process(delta):
#	var time_now = OS.get_unix_time()
#	var time_elapsed = time_now - _time_start
#	if time_elapsed > infection_interval:
#		get_parent().get_node("Tilemap").infect_neighbors(position)
#		_time_start = OS.get_unix_time()


func _on_Timer_timeout():
	var tilemap = get_parent().get_node("TileMap")
	tilemap.infect_neighbors(position)
