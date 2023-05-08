# warning-ignore-all:return_value_discarded

extends Node

# ############################################################################ #
# Imports
# ############################################################################ #

var InkPlayer = load("res://addons/inkgd/ink_player.gd")

export var ingredients :PoolStringArray
export var emotags :PoolStringArray

var current_choices : Array

# ############################################################################ #
# Public Nodes
# ############################################################################ #

# Alternatively, it could also be retrieved from the tree.
# onready var _ink_player = $InkPlayer
onready var _ink_player = InkPlayer.new()

# ############################################################################ #
# Lifecycle
# ############################################################################ #

func _ready():
	# Adds the player to the tree.
	add_child(_ink_player)

	# Replace the example path with the path to your story.
	# Remove this line if you set 'ink_file' in the inspector.
	_ink_player.ink_file = load("res://Story/yours_always_main.ink.json")

	# It's recommended to load the story in the background. On platforms that
	# don't support threads, the value of this variable is ignored.
	_ink_player.loads_in_background = true

	_ink_player.connect("loaded", self, "_story_loaded")
	#_ink_player.connect("continued", self, "_continued")
	#_ink_player.connect("prompt_choices", self, "_prompt_choices")
	_ink_player.connect("ended", self, "_ended")

	# Creates the story. 'loaded' will be emitted once Ink is ready
	# continue the story.
	_ink_player.create_story()


signal _onload (story)

func _register_onload_callback(target, callback):
	if story_loaded:
		target.call(callback, self)
	else:
		self.connect("_onload", target, callback)

# ############################################################################ #
# Signal Receivers
# ############################################################################ #

var story_loaded := false

func _story_loaded(successfully: bool):
	if !successfully:
		return

	story_loaded = true
	emit_signal("_onload", self)
	_jump("ingredient_choice")

	_observe_variables()
	# _bind_externals()

	# Here, the story is started immediately, but it could be started
	# at a later time.
	_ink_player.continue_story()


#func _continued(text, _tags):
#	print(text)
	# Here you could yield for an hypothetical signal, before continuing.
	# yield(self, "event")
	#_ink_player.continue_story()

func _mindreads(character) -> PoolStringArray:
	_jump("%s_mindreads" %[character])
	var mindreads :PoolStringArray = []
	while _ink_player.get_can_continue():
		_ink_player.continue_story()
		mindreads.append(_ink_player.get_current_text())
		if _ink_player.get_has_choices():
			mindreads.append("[READMORE]")
			_ink_player.choose_choice_index(0)
	return mindreads

# ############################################################################ #
# Private Methods
# ############################################################################ #

#func _prompt_choices(choices):
#	if !choices.empty():
#		print(choices)
#	current_choices = choices
		# In a real world scenario, _select_choice' could be
		# connected to a signal, like 'Button.pressed'.
		#_select_choice(0)


func _ended():
	print("The End")


func _select_choice(choice):
	_ink_player.continue_story_maximally()
	if typeof(choice) == TYPE_INT:
		_ink_player.choose_choice_index(choice)
		_ink_player.continue_story()
		current_choices.empty()
	elif typeof(choice) == TYPE_STRING:
		var choice_index :int = _ink_player.get_current_choices().find(choice)
		if choice_index >= 0:
			_select_choice(choice_index)
		else:
			print("Couldn't find choice '%s'" %[choice])

func _jump(path):
	_ink_player.choose_path(path)

func get_tooltip(element) -> String :
	_ink_player.switch_flow("Tooltip")
	_jump("%s_tooltip" %[element])
	var text = _ink_player.continue_story_maximally()
	_ink_player.switch_to_default_flow()
	return text
#	_ink_player.switch_flow("Tooltip")
#	_jump("%s_tooltip" %[element])
#	var result : PoolStringArray = []
#	_ink_player.continue_story()
#	result.append(_ink_player.get_current_text())
#	result.append_array(_ink_player.get_current_tags())
#	if _ink_player.get_has_choices():
#		result.append(_ink_player.get_current_choices()[0])
#	_ink_player.switch_to_default_flow()
#	return result

func _choose_ingredient(ingredient : String):
	_jump("ingredient_choice")
	_select_choice(ingredient)
	_ink_player.continue_story_maximally()

var selected_character : String
func _choose_character(character : String):
	selected_character = character
	_jump("character_choice")
	_select_choice(character)
	_ink_player.continue_story_maximally()

func _write_letter() -> String:
	_jump("%s_letter" %[selected_character])
	return _ink_player.continue_story_maximally()
	
func _next_week():
	_jump("weekly_upkeep")
	_ink_player.continue_story_maximally()
	

# Uncomment to bind an external function.
#
# func _bind_externals():
# 	_ink_player.bind_external_function("<function_name>", self, "_external_function")
#
#
# func _external_function(arg1, arg2):
# 	pass


# Uncomment to observe the variables from your ink story.
# You can observe multiple variables by putting adding them in the array.
func _observe_variables():
	pass
	#_ink_player.observe_variables(["currentWeek"], self, "_variable_changed")
#
#
func _variable_changed(variable_name, new_value):
	print("Variable '%s' changed to: %s" %[variable_name, new_value])


func _get_week() -> int:
	var week = _ink_player.get_variable("currentWeek")
	if week != null:
		return int(str(week).trim_prefix("week_"))
	else:
		return 0

func _reset_story():
	_ink_player.reset()
