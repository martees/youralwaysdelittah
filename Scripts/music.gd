extends Node


func _play_main():
	if $NightMusic.playing:
		$NightMusic.stop()
	if $MainMusic.stream_paused:
		$MainMusic.stream_paused = false
	else:
		$MainMusic.play()

func _play_night():
	$MainMusic.stream_paused = true
	$NightMusic.play()
