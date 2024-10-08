extends Node2D

const RIVER_TILE_SPACING_Y = 60
const RIVER_TILE_SPACING_X = 34
const RIVER_TILE_RAW_NUM = 10

var current_tile_index = 0

func clean():
	self.get_children().all(free)
	current_tile_index = 0

func draw_a_tile(tile: String):
	# 实例化牌
	var new_tile = load("res://scenes/river_tile.tscn").instantiate()
	var river_tile = GameType.RiverTile.new()
	river_tile.name = tile
	river_tile.num = current_tile_index
	new_tile.setup(river_tile)
	add_child(new_tile)  # 将新牌添加到当前节点

	# 计算牌的位置
	var row = floor(current_tile_index / (RIVER_TILE_RAW_NUM))
	var col = current_tile_index % (RIVER_TILE_RAW_NUM)
	var x = RIVER_TILE_SPACING_X * ( col - 5 )
	var y = RIVER_TILE_SPACING_Y * row

	# 设置牌的位置
	new_tile.position = Vector2(x, y)

	# 更新索引
	current_tile_index += 1
	
