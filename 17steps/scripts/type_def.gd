extends Node

class_name GameType

enum Action {
	DISCARD, #打牌
	CHOW,
	PONG,
	KONG,
	CONCEALED_KONG,
}

static var action_name: Dictionary =  {
	Action.DISCARD: "打出",
	Action.CHOW: "吃",
	Action.PONG: "碰",
	Action.KONG: "杠",
	Action.CONCEALED_KONG: "暗杠",
}

static func get_action_name(action: Action) -> String:
	return action_name[action]


class HandTile:
	var name: String
	var num: int
	
class RiverTile:
	var name: String
	var num: int
	
		
	
