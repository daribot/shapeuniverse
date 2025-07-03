extends CharacterBody2D
class_name Personaje2


signal player_hit()

@export var gravity = 250
@export var jump_speed = 300
@export var speed = 200
@onready var sprite_2d = $Sprite2D


func _physics_process(delta):
	
	#horizontal
	var direction = Input.get_axis("a", "d")
	velocity.x = speed * direction
	
	if direction != 0:
		sprite_2d.scale.x = direction
	
	#gravedad
	if not is_on_floor():
		velocity.y = velocity.y + gravity * delta
	
	#saltar
	var jump_pressed = Input.is_action_just_pressed("w")
	if jump_pressed and is_on_floor():
		velocity.y = velocity.y - jump_speed
	
	move_and_slide()


func _on_area_2d_body_entered(body):
	print("Un cuerpo ha entrado en el área: ", body.name)
	print("aqui podriamos reproducir una animación de alegria")
	
func damage_received():
	print("daño recibido")
	player_hit.emit()
