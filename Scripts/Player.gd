extends CharacterBody2D
signal hit

var velocitat := 600

func _ready():
	hide()

func _process(delta: float) -> void:
	var direccio:= Vector2.ZERO
	direccio = Input.get_vector("mou_esquerra","mou_dreta","mou_amunt","mou_avall")
	velocity = direccio * velocitat
	move_and_slide()
	anima(velocity, delta)

func anima(velocitat: Vector2, delta: float) -> void:
	var velocitat_angular := 0.05
	


func _on_area_2d_body_entered(body: Node2D) -> void:
	hide() 
	hit.emit()
	
	$CollisionShape2D.set_deferred("disabled", true)

func start(pos):
	position = pos
	show()
	$CollisionShape2D.disabled = false
