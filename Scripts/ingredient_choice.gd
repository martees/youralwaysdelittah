extends Node



export(Array, NodePath) var Ingredients : = []

func _ready():
	$Selection.visible = true
	$BigLetter.visible = false
	
	for ingredient in Ingredients:
		assert (get_node(ingredient).connect("clicked", self, "_choose_ingredient") == 0)
	
	assert($Selection/Validate.connect("clicked", self, "_validate_ingredient") == 0)
	$Selection/Tutorial.bbcode_text = $"/root/Story".get_tooltip("letter")

var selected_ingredient := ""

func _choose_ingredient(_ingredient):
	selected_ingredient = _ingredient
	for ingredient in Ingredients:
		var node = get_node(ingredient)
		node.selected = selected_ingredient == node.id
	$Selection/Validate._set_enabled(true)
	
	
	
func _validate_ingredient(_id):
	$"/root/Story"._choose_ingredient(selected_ingredient)
	var letter = $"/root/Story"._write_letter()
	$BigLetter/Text.bbcode_text = letter
	$Selection.visible = false
	$BigLetter.visible = true
	assert ($BigLetter/Validate.connect("clicked", self, "_validate") == 0)
	
func _validate(_id):
	$"/root/Story"._next_week()
	assert (get_tree().change_scene("res://Scenes/Town.tscn") == OK)
