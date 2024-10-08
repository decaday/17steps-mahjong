extends Node2D

var river_tile: GameType.RiverTile

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func setup(tile: GameType.RiverTile):
	self.river_tile = tile
	$Tile.setup(tile.name)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
