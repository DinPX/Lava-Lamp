extends Control


func _ready() -> void:
	modulate.a = 0.0


func _on_Main_mouse_entered() -> void:
	if $"%Tween".is_active():
		$"%Tween".stop_all()
	$"%Tween".interpolate_property(self, "modulate:a", modulate.a, 1.0, 0.25, Tween.TRANS_LINEAR, Tween.EASE_IN)
	$"%Tween".start()


func _on_Main_mouse_exited() -> void:
	if $"%Tween".is_active():
		$"%Tween".stop_all()
	$"%Tween".interpolate_property(self, "modulate:a", modulate.a, 0.0, 0.25, Tween.TRANS_LINEAR, Tween.EASE_OUT)
	$"%Tween".start()
