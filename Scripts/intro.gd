extends Control

export var day : float = 1
export var first_fade : float = 1
export var night : float = 3
export var second_fade : float = 2

func _get_total() -> float:
	return day + first_fade + night + second_fade

func _get_time() -> float:
	return Time.get_ticks_msec() * 0.001 - start
	

var start : float
var over := false

func _ready():
	start = Time.get_ticks_msec() * 0.001
	$IntroNight/Flavor.bbcode_text = "[right]%s[/right]" %[$"/root/Story".get_tooltip("week")]
	visible = true
	$IntroNight.visible = true
	$IntroDay.visible = true	
	if $"/root/Story".story_loaded:
		$IntroNight/WeekLabel.texture = load("res://Sprites/Weeks/week%s.png" %[$"/root/Story"._get_week()])
	
	
func _process(_delta):
	if not over:
		var time = _get_time()
		if time >= day and not $"/root/Music/NightMusic".playing:
			$"/root/Music/NightMusic".play()
		if time >= day + first_fade + night and not $"/root/Music/MainMusic".playing:
			$"/root/Music/MainMusic".play()
		if time < _get_total():
			var day_alpha = clamp(- (time - day - first_fade) / first_fade, 0, 1)
			var night_alpha = clamp(- (time - _get_total()) / second_fade, 0, 1)
			$IntroDay.modulate.a = day_alpha
			$IntroNight.modulate.a = night_alpha
			$"/root/Music/MainMusic".volume_db = lerp(-30, 0, max(day_alpha, 1 - night_alpha))
			$"/root/Music/NightMusic".volume_db = lerp(-30, 0, night_alpha)
		else:
			over = true
			self.visible = false
			$"/root/Music/MainMusic".volume_db = 0
			$"/root/Music/NightMusic".stop()


func _input(event):
	if not over:
		if event is InputEventMouseButton:
			if event.button_index == BUTTON_LEFT:
				if event.pressed:
					var time := _get_time()
					if time < day + first_fade :
						start += time - day - first_fade
					else:
						start -= _get_total()
						
