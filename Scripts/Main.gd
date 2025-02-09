extends Control

var scale := 0
var dragging = false

onready var lamp_size := Vector2(160, 300) / 2


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


func _on_OnTop_pressed() -> void:
	OS.set_window_always_on_top(!OS.is_window_always_on_top())

	if OS.is_window_always_on_top():
		$"%OnTop".hint_tooltip = """Always on top
of other windows: ON"""
	else:
		$"%OnTop".hint_tooltip = """Always on top
of other windows: OFF"""


func _on_Minimize_pressed() -> void:
	OS.set_window_minimized(true)
	VisualServer.set_shader_time_scale(0.0)
	VisualServer.render_loop_enabled = false


func _on_Scale_pressed() -> void:
	scale += 1

	match scale: # Note: Different from lamp_size for its y-offset
		0: OS.set_window_size(Vector2(160, 320))
		1: OS.set_window_size(Vector2(200, 360))
		2: OS.set_window_size(Vector2(320, 640))
		3:
			OS.set_window_size(Vector2(160, 320))
			scale = 0


func _on_Quit_pressed() -> void:
	get_tree().quit(0)
