tool

extends "res://Scripts/hoverable.gd"


onready var main_interface = find_parent("LetterCraft")

var infos : PoolStringArray
var ingredient_name : String
var description : String
var emo_tags : PoolStringArray
var full_text : String

# Called when the node enters the scene tree for the first time.
#func _ready():
#	assert(connect("pressed", $"/root/Story",  "_select_choice", [id]) == 0)
#	assert(connect("mouse_entered", main_interface, "_show_ingredient", [self]) == 0)
#	assert(connect("mouse_exited", main_interface, "_show_ingredient", [null]) == 0)
	

var selected := false

func is_hovered() -> bool:
	return true if selected else .is_hovered()

func should_load_dynamic_images() -> bool:
	return true

func get_sprite_name() -> String:
	return "res://Sprites/Ingredients/%s.png" %[id]
	
func get_hl_sprite_name() -> String:
	return "res://Sprites/Ingredients/%s_hl.png" %[id]


func get_full_text():
	if full_text.empty():

		infos = $"/root/Story".get_tooltip(id)
		description = infos[0]
		
		for info in infos:
			if info.begins_with("NAME:"):
				ingredient_name = info.trim_prefix("NAME:")
			elif info.begins_with("EMOTAG:"):
				emo_tags.append(info.trim_prefix("EMOTAG:"))

		full_text = """
[b]{name}[/b]

{desc}

[color=#0000FF]{tags}[/color]
		""".format({"name" : ingredient_name, "desc" : description, "tags" : emo_tags.join(", ")})
	
	return full_text
