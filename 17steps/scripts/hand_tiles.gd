extends Node2D

const HAND_TILES_SPACING = 70

@onready var discard_state: Signal = get_parent().discard_state

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func clean():
	self.get_children().all(free)

func draw(hand_tiles_list: Array[String]):
	clean()
	
	if hand_tiles_list.size() > 13:
		print("Error: hand tile num is bigger than 13")
	
	var hand_tile_num: int = 0
	for tile_name in hand_tiles_list:
			
		var hand_tile = preload("res://scenes/hand_tile.tscn").instantiate()
		
		hand_tile.set_position(
			Vector2((hand_tile_num - 7 ) * HAND_TILES_SPACING, 0))
		var tile = GameType.HandTile.new()
		tile.name = tile_name
		tile.num = hand_tile_num
		hand_tile.setup(tile, discard_state)
		
		self.add_child(hand_tile)

		hand_tile_num += 1



func get_selected_tile_num() -> GameType.HandTile:
	var children = self.get_children()
	if not children.is_empty():
		for child in children:
			if child.is_selected:
				return child.hand_tile
	else:
		print("Error: no hand tiles but call get_select_tile")
		return GameType.HandTile.new()
	return GameType.HandTile.new()
	
