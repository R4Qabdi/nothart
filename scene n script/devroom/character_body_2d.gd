extends CharacterBody2D

@export var SPEED = 10000

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("serang"):
		$ani.play("serang")
		print("serang")
	
	
	var direction := Input.get_vector("kiri","kanan","atas","bawah")
	velocity = direction * SPEED * delta
	if $Ui/serang and $Ui/serang.is_pressed:
		$anchor.rotation = $Ui/serang.output.angle()
		
	if direction : 
		$anim.play("jalan")
	else :
		$anim.stop()
	move_and_slide()

func _on_serang_mouse_exited() -> void:
	print("mouse exit")
	#$anchor/slash.play("play")


func _on_slash_animation_finished() -> void:
	print("woyyyy")
	$anchor/slash.stop()
