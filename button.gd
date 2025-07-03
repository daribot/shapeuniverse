extends Button
func _ready():
	print("ready")
	self.pressed.connect(_on_button_pressed)

func _on_button_pressed():
	print("¡Botón presionado!")
	get_tree().change_scene_to_file("res://level2.tscn")
