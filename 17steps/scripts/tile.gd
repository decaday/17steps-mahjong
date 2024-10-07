extends Sprite2D

var tile_name: String = "1m"
signal clicked

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func setup(tile_name_new: String):
	self.tile_name = tile_name_new
	self.texture = load("res://tiles/tile_%s.png" % tile_name)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_button_pressed():
	emit_signal("clicked")
