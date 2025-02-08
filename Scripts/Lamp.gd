extends TextureRect


func _on_Main_mouse_entered() -> void:
	if $"%Tween".is_active():
		$"%Tween".stop_all()
	$"%Tween".interpolate_property(material, "shader_param/line_thickness", material.get("shader_param/line_thickness"), 2.0, 0.15, Tween.TRANS_LINEAR, Tween.EASE_IN)
	$"%Tween".start()


func _on_Main_mouse_exited() -> void:
	if $"%Tween".is_active():
		$"%Tween".stop_all()
	$"%Tween".interpolate_property(material, "shader_param/line_thickness", material.get("shader_param/line_thickness"), 0.0, 0.15, Tween.TRANS_LINEAR, Tween.EASE_IN)
	$"%Tween".start()
