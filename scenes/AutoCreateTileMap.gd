extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var tile_set:TileSet = $TileMap.tile_set	
	var pattern = tile_set.get_pattern(0)
	$TileMap.set_pattern(0 , Vector2(0,0) , pattern)	
	for i in range(0,100):			
		$TileMap.set_cell(1,Vector2i(i ,0),1,Vector2i(18,3),0)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
