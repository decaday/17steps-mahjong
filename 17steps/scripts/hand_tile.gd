extends Node2D

# var mahjong_table;
var is_selected: bool = false
var can_select: bool = false
var hand_tile_num: int = 0

const SELECT_OFFSET_Y: int = 20

# Called when the node enters the scene tree for the first time.
func _ready():
	$Tile.clicked.connect(on_clicked)
	SignalBus.certain_hand_tile_select.connect(on_certain_hand_tile_selected)
	
func setup(tile_name: String, this_hand_tile_num: int, discard_state_signal: Signal):
	discard_state_signal.connect(discard_state_update)
	self.hand_tile_num = this_hand_tile_num
	$Tile.setup(tile_name)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
	
func get_tile_name() -> String:
	return $Tile.tile_name

func set_tile_name() -> String:
	return $Tile.tile_name

func on_certain_hand_tile_selected(selected_hand_tile_num: int):
	if self.is_selected:
		if selected_hand_tile_num != self.hand_tile_num:
			self.is_selected = false
			self.move_local_y(SELECT_OFFSET_Y)

func on_clicked():
	if can_select:
		if self.is_selected:
			self.is_selected = false
			self.move_local_y(SELECT_OFFSET_Y)
		else:
			SignalBus.certain_hand_tile_select.emit(self.hand_tile_num)
			self.is_selected = true
			self.move_local_y(-SELECT_OFFSET_Y)


func discard_state_update(state: bool):
	can_select = state
	if not state and is_selected:
		print("Error: discard state is closed but %s is selected"
			% get_tile_name())
