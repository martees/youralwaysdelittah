extends Node



# Called when the node enters the scene tree for the first time.
func _ready():
	var credit = $"/root/Story".get_tooltip("credits")
	$Text.bbcode_text = "[center]%s[/center]" %[$"/root/Story".get_tooltip("credits")]
	assert($Back.connect("clicked", self, "_back") == 0)
	
func _back(_id):
	$"/root/Story"._reset_story()
	assert (get_tree().change_scene("res://Scenes/Menu.tscn") == OK)
	
