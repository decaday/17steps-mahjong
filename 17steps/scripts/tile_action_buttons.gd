extends Node2D

const TileActionButton = preload("res://scenes/tile_action_button.tscn")
const TILE_ACTION_BUTTONS_SPACING = 400

signal take_action(action: GameType.Action)

# Called when the node enters the scene tree for the first time.
func _ready():
	take_action.connect(on_took_action)
	draw(GameType.Action.CHOW)
	draw(GameType.Action.PONG)
	
#func _process(delta):

func clean():
	self.get_children().all(free)
	
func draw(action: GameType.Action):
	# 检查是否已经有子节点
	var existing_buttons = get_children()
	var new_button = TileActionButton.instantiate()
	
	# 设置新按钮的属性（这里您可能需要根据action来设置一些属性）
	new_button.setup(action, take_action)
	
	add_child(new_button)
	if existing_buttons.is_empty():
		new_button.position = Vector2.ZERO
	else:
		
		# 重新排列所有按钮
		var total_width = (existing_buttons.size() + 1) * TILE_ACTION_BUTTONS_SPACING
		var start_x = -total_width / 2
		
		for i in range(existing_buttons.size() + 1):
			var button = get_child(i)
			button.position.x = start_x + i * TILE_ACTION_BUTTONS_SPACING
			button.position.y = 0  # 保持y坐标为0，使其在一行上

func on_took_action(action: GameType.Action):
	match action:
		GameType.Action.DISCARD:
			var tile: GameType.HandTile = get_node("../HandTiles").get_selected_tile_num()
			print("出牌")
			print(tile)
		_:
			print("操作")
