extends Control

var dragging = false

onready var lamp_size := Vector2(120, 300) / 2

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT:
			if event.pressed: dragging = true
			else: dragging = false

	if event is InputEventMouseMotion and dragging == true:
		OS.set_window_position(OS.get_window_position() + get_global_mouse_position() - lamp_size)
