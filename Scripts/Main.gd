extends Control

var scale := 1
var dragging = false

onready var lamp_size := Vector2(120, 318) / 2


func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT:
			if event.pressed: dragging = true
			else: dragging = false

	if event is InputEventMouseMotion and dragging == true:
		OS.set_window_position(OS.get_window_position() + get_global_mouse_position() - lamp_size)


func _notification(what: int) -> void:
	if what == MainLoop.NOTIFICATION_WM_FOCUS_IN:
		VisualServer.set_shader_time_scale(1.0)
		VisualServer.render_loop_enabled = true


func _on_Minimize_pressed() -> void:
	OS.set_window_minimized(true)
	VisualServer.set_shader_time_scale(0.0)
	VisualServer.render_loop_enabled = false


func _on_Scale_pressed() -> void:
	scale += 1
	match scale:
		1:
			OS.set_window_size(Vector2(120, 318))
			lamp_size = Vector2(120, 318) / 2
		2:
			OS.set_window_size(Vector2(160, 358))
			lamp_size = Vector2(120, 318) / 2
		3:
			OS.set_window_size(Vector2(240, 636))
			lamp_size = Vector2(120, 318) / 2
			scale = 0


func _on_Quit_pressed() -> void:
	get_tree().quit(0)
