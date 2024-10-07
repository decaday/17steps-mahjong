extends Node2D

signal discard_state(state: bool)

const TILES_SPACING = 70

var test_hand_tiles_list: Array[String] = [
	"1s", "1s", "2m","9m","1z","6z","4m","8p","4z","4z","4z","2z","2z"
]

# Called when the node enters the scene tree for the first time.
func _ready():
	draw_tiles(test_hand_tiles_list, test_hand_tiles_list)
	discard_state.emit(true)
	pass # Replace with function body.
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
	
func its_my_turn():
	discard_state.emit(true)

func draw_tiles(hand_tiles_list: Array[String], _corner_tiles_list: Array[String]):
	$HandTiles.get_children().all(free)
	
	var hand_tile_num: int = 0
	for tile_name in hand_tiles_list:
		if hand_tile_num >= 13:
			print("Error: hand tile num is bigger than 13")
			
		var hand_tile = preload("res://hand_tile.tscn").instantiate()
		
		hand_tile.set_position(
			Vector2((hand_tile_num - 7 ) * TILES_SPACING, 0))
		hand_tile.setup(tile_name, hand_tile_num, discard_state)
		
		$HandTiles.add_child(hand_tile)

			
		hand_tile_num += 1
	
