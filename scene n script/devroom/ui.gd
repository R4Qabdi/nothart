extends CanvasLayer


func _ready() -> void:
	pass # Replace with function body.

func _process(delta: float) -> void:
	pass

func _on_button_pressed() -> void:
	get_tree().quit()

func _on_button_2_pressed() -> void:
	Dialogic.start("siblok")


func _on_serang_focus_exited() -> void:
	print("kapan sih hilangnya?")


func _on_gaje_released() -> void:
	Input.action_press("serang")
