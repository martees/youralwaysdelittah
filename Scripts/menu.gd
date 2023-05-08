extends Node

func _ready():
	$"/root/Story"._register_onload_callback(self, "_story_loaded")
	assert($Background/Start.connect("clicked", self, "_game_start") == 0)
	assert($Background/Credits.connect("clicked", self, "_open_credits") == 0)

func _story_loaded(_story):
	$Background/Start.visible = true
	$Background/Credits.visible = true

func _game_start(_id):
	assert (get_tree().change_scene("res://Scenes/Town.tscn") == OK)

func _open_credits(_id):
	assert (get_tree().change_scene("res://Scenes/Credits.tscn") == OK)
