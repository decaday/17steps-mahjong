extends Node2D

signal discard_state(state: bool)

const TILES_SPACING = 70


var test_hand_tiles_list: Array[String] = [
	"1s", "1s", "2m","9m","1z","6z","4m","8p","4z","4z","4z","2z","2z"
]

# Called when the node enters the scene tree for the first time.
func _ready():
	$HandTiles.draw(test_hand_tiles_list)
	for tile in test_hand_tiles_list:
		$MyTileRiver.draw_a_tile(tile)
	its_my_turn()
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
	
func its_my_turn():
	discard_state.emit(true)
	
