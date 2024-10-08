extends Node2D

var action: GameType.Action = GameType.Action.DISCARD
var action_signal: Signal

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func setup(this_action: GameType.Action, this_action_signal: Signal):
	$Button.text = GameType.get_action_name(this_action)
	self.action = this_action
	self.action_signal = this_action_signal

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	self.action_signal.emit(self.action)
