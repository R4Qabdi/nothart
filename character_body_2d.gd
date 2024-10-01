extends CharacterBody2D

@export var SPEED = 1000

func _physics_process(delta: float) -> void:
	var direction := Input.get_vector("kiri","kanan","atas","bawah")
	velocity = direction * SPEED * delta
	
	if direction : 
		$anim.play("jalan")
	else :
		$anim.stop()
	move_and_slide()
