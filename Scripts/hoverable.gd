tool

extends Control

export var id : String

export var reset_id : bool setget _reset_id

export var enabled :bool = true

export var sound : AudioStream = null

func _reset_id(reset : bool):
	if reset and should_load_dynamic_images():
		$Image.texture = load(get_sprite_name())
		$ImageHL.texture = load(get_hl_sprite_name())
		if has_tooltip():
			$Tooltip.texture = load(get_tooltip_sprite_name())
	reset_id = false

signal clicked

func should_load_dynamic_images() -> bool:
	return false

func get_sprite_name() -> String:
	return ""
	
func get_hl_sprite_name() -> String:
	return ""
	
func get_tooltip_sprite_name() -> String:
	return ""

func has_tooltip() -> bool:
	return false

func has_sound() -> bool:
	return sound != null

var image_data : Image

func _ready():
	if not Engine.editor_hint:
		_reset_id(true)
		image_data = $Image.texture.get_data()
		image_data.lock()
		if has_node("TooltipText"):
			var tooltip_text = $TooltipText
			self.remove_child(tooltip_text)
			$Tooltip.add_child(tooltip_text)
			tooltip_text.set_owner($Tooltip)
			tooltip_text.name = "Text"
			$"/root/Story"._register_onload_callback(self, "_on_story_loaded")
		if not enabled:
			$ImageGR.visible = true
			
func _input(event):
	if enabled:
		if is_visible_in_tree():
			if event is InputEventMouseButton:
				if event.button_index == BUTTON_LEFT:
					if event.pressed:
						if is_inside(event.position):
							emit_signal("clicked", id)
							if has_sound():
								if not has_node("/root/Sound"):
									var node = AudioStreamPlayer.new()
									node.set_name("Sound")
									get_node("/root/").add_child(node)
								var sound_node = get_node("/root/Sound")
								sound_node.stream = sound
								sound_node.play()

func _on_story_loaded(story):
	if has_node("Tooltip/Text"):
		$Tooltip/Text.text = story.get_tooltip(id)

func _set_enabled(var new_enabled : bool):
	enabled = new_enabled
	$ImageGR.visible = not enabled
	if not enabled:
		$Image.visible = false
		$ImageHL.visible = false

func _process(_delta):
	if not Engine.editor_hint:
		var hovered = is_hovered()
		$Image.visible = enabled and !hovered
		$ImageHL.visible = enabled and hovered
		if has_tooltip():
			$Tooltip.visible = enabled and hovered
		


func is_inside(position : Vector2) -> bool:
	if $Image.get_rect().has_point(position):
		return image_data.get_pixelv(position).a8 > 0
	else:
		return false

func is_hovered() -> bool:
	return enabled and is_inside($Image.get_local_mouse_position())

	
