extends Control
"size/viewport_width"
var vport = Vector2(1152,648)
func _ready() -> void:
	ganti()
func ganti():
	get_window().content_scale_size = vport
