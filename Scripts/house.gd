tool

extends "res://Scripts/hoverable.gd"


func should_load_dynamic_images() -> bool:
	return true

func get_sprite_name() -> String:
	return "res://Sprites/Houses/%s.png" %[id]
	
func get_hl_sprite_name() -> String:
	return "res://Sprites/Houses/%s_hl.png" %[id]

func has_tooltip() -> bool:
	return true

func get_tooltip_sprite_name() -> String:
	return "res://Sprites/Houses/Tooltips/%s.png" %[id]

func _ready():
	sound = load("res://Sounds/clic_%s.ogg" %[id])

func has_sound() -> bool:
	return true
