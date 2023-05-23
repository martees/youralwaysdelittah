extends Node


export(Array, NodePath) var Houses : = []

var characters : PoolStringArray = []
var mindreads = {}
var portraits = {}
var mindreaddisplayed = {}

# Called when the node enters the scene tree for the first time.
func _ready():
	for house in Houses:
		var node = get_node(house)
		assert (node.connect("clicked", self, "_onclicked_house") == 0)
		characters.append(node.id)
		node.visible = true
		portraits[node.id] = load("res://Sprites/Portraits/%s.png" %[node.id])
	$MindRead.visible = false
	assert($MindRead/ReadMore.connect("clicked", self, "_onclicked_readmore") == 0)
	assert($Houses/MindReadTextBox.connect("completed", self, "_on_text_completed") == 0)
	assert ($BottomBar/LetterButton.connect("clicked", self, "_compose_letter") == 0)
	$"/root/Story"._register_onload_callback(self, "_read_minds")

func _read_minds(story):
	for character in characters:
		mindreads[character] = story._mindreads(character)

var selected_character : String

func _onclicked_house(character):
	selected_character = character
	_show_readminds(character, false)
	
func _onclicked_readmore(_id):
	_show_readminds(selected_character, true)
	
var show_read_more := false
func _show_readminds(character :String, read_more : bool):
	var i := 0
	var stop := false
	var text := ""
	while i < mindreads[character].size() and not stop:
		if mindreads[character][i] == "[READMORE]":
			if read_more:
				mindreads[character][i] = "\n"
				read_more = false
			else:
				stop = true
		if not stop:
			text += mindreads[character][i]
		i += 1
		
	if not mindreaddisplayed.has(character):
		mindreaddisplayed[character] = 0
	
	var char_name = character.capitalize()
	show_read_more = stop
	var week = $"/root/Story"._get_week()
	$MindRead/Title.bbcode_text = "[center]%s's thoughts[/center]" %[char_name]
	$BottomBar/Text.bbcode_text = "[center]Go visit %s[/center]" %[char_name] if week < 8 else "[center]Go back home[/center]"
	$MindRead.visible = true
	$MindRead/ReadMore.visible = false
	$Houses/MindReadTextBox.scroll_following = true
	$Houses/MindReadTextBox.visible = true
	$Houses/MindReadTextBox.bbcode_text = text
	$Houses/MindReadTextBox._reset_chars(mindreaddisplayed[character])
	$BottomBar/LetterButton._set_enabled(not stop)
	mindreaddisplayed[character] = text.length()
	for house in Houses:
		get_node(house).get_node("Tooltip").visible = false

	
	$Portrait.texture = portraits[character]
	$Portrait.visible = true

func _on_text_completed():
	if show_read_more:
		$MindRead/ReadMore.visible = true

func _compose_letter(_id):
	if $"/root/Story"._get_week() < 8:
		$"/root/Story"._choose_character(selected_character)
		assert (get_tree().change_scene("res://Scenes/IngredientChoice.tscn") == OK)
	else:
		assert (get_tree().change_scene("res://Scenes/Credits.tscn") == OK)
