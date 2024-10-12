extends CanvasLayer


func _ready() -> void:
	pass # Replace with function body.

func _process(delta: float) -> void:
	pass

func _on_button_2_pressed() -> void:
	Dialogic.start("siblok")

func _on_serang_focus_exited() -> void:
	print("kapan sih hilangnya?")

func _on_gaje_released() -> void:
	Input.action_press("serang")

func _on_resume_pressed() -> void:
	$ani.play_backwards("masuk")
	menu_on=false

func _on_option_pressed() -> void:
	$ani.play("opmasuk")
	opbuka=true

func _on_exitop_pressed() -> void:
	$ani.play_backwards("opmasuk")
	opbuka=false


func _on_exit_pressed() -> void:
	get_tree().change_scene_to_file("res://scene n script/fmality/mainmenu.tscn")

func _on_save_pressed() -> void:
	$ani.play("savmasuk")

func _on_menu_toggled(toggled_on: bool) -> void:
	if toggled_on :
		menu_on=true
		$ani.play("masuk")
	elif !toggled_on :
		tutupsemua()
var menu_on = false
var savebuka = false
var opbuka = false

func tutupsemua() -> void:
	if savebuka :
		$ani.play_backwards("savmasuk")
	if opbuka :
		$ani.play_backwards("opmasuk")
	$ani.play_backwards("masuk")

func _on_save_toggled(toggled_on: bool) -> void:
	if toggled_on :
		$ani.play("savmasuk")
	elif !toggled_on :
		$ani.play_backwards("savmasuk")
