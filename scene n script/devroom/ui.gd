extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_button_pressed() -> void:
	get_tree().quit()

func _on_button_2_pressed() -> void:
	Dialogic.start("siblok")


func _on_serang_focus_exited() -> void:
	print("kapan sih hilangnya?")
