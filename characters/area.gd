extends Area2D

# Cambia esto por la ruta a la escena que quieres cargar
@export var next_level_path: String = "res://1a2.tscn"

func _on_body_entered(body):
	if body.name == "Jugador":
		call_deferred("_cambiar_nivel")

func _cambiar_nivel():
	get_tree().change_scene_to_file("res://level2.tscn")
