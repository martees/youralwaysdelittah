extends RichTextLabel


export var char_by_seconds : float = 30
export var advance_on_click : float = 1000

var total_chars : int = 0
var shown_chars : float = 0

func _reset_chars(_new_shown : int):
	shown_chars = _new_shown
	_update_chars()

func _update_chars():
	total_chars = bbcode_text.length()
	if shown_chars >= total_chars:
		shown_chars = total_chars
		emit_signal("completed")
	visible_characters = shown_chars

signal completed

func _process(delta):
	total_chars = bbcode_text.length()
	if total_chars > 0 and shown_chars < total_chars:
		shown_chars += delta * char_by_seconds
		_update_chars()

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT:
			if event.pressed:
				shown_chars += advance_on_click
				_update_chars()
