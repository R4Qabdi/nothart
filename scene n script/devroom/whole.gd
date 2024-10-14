extends Node2D

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	if Input.is_key_pressed(KEY_E):
		Dialogic.start("siblok")
		$"rplayer/player/Ui/Virtual Joystick".hide()
		$rplayer/player/Ui/serang.hide()
	else :
		pass

func _on_debugworld_pressed() -> void:
	$WalkerGenerator.generate()
