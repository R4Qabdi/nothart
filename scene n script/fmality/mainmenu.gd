extends CanvasLayer

var onsav = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_start_pressed() -> void:
	$ani.play("masukstart")

func _on_exit_pressed() -> void:
	get_tree().quit()


func _on_option_pressed() -> void:
	pass # Replace with function body.

func _on_savback_pressed() -> void:
	onsav = false
	$ani.play("keluarsav")

func _on_back_pressed() -> void:
	if onsav :
		$ani.play("keluarsav")
	onsav = false
	$ani.queue("keluarstart")

func _on_load_pressed() -> void:
	onsav = true
	$ani.play("masuksav")
	
func _on_startnew_pressed() -> void:
	get_tree().change_scene_to_file("res://scene n script/devroom/whole.tscn")
