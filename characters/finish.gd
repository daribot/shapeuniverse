extends Area2D

@export var siguiente_escena: String = "res://level2.tscn"

func _on_body_entered(body):

		get_tree().change_scene_to_file(siguiente_escena)
