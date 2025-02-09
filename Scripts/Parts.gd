extends Control


enum Skins {
	Kite, # default
	IsoscelesTrapezoid,
	Oval,
	Rectangle,
}

var no := 0

onready var skins := {
	"contents": [
		preload("res://Assets/Textures/contents.png"), # default
		preload("res://Assets/Textures/contents_1.png"),
		preload("res://Assets/Textures/contents_2.png"),
		preload("res://Assets/Textures/contents_3.png"),
	],

	"cover": [
		preload("res://Assets/Textures/cover.png"), # default
		preload("res://Assets/Textures/cover_1.png"),
		preload("res://Assets/Textures/cover_2.png"),
		preload("res://Assets/Textures/cover_3.png"),
	],
}


func _ready() -> void:
	set_skin(Skins.Kite)


func set_skin(item:int) -> void:
	$Contents.texture = skins["contents"][item]
	$Cover.texture = skins["cover"][item]

	match item:
		Skins.Kite:
			$Contents.material.set("shader_param/top", 0.75)
			$Contents.material.set("shader_param/blob_threshhold", 2)
			$Contents.material.set("shader_param/blob_scale_x", 1.25)
			$Contents.material.set("shader_param/blob_scale_y", 1)
			$Contents.material.set("shader_param/random_seed", 1)

		Skins.IsoscelesTrapezoid:
			$Contents.material.set("shader_param/top", 0.8)
			$Contents.material.set("shader_param/blob_threshhold", 2.25)
			$Contents.material.set("shader_param/blob_scale_x", 1.5)
			$Contents.material.set("shader_param/blob_scale_y", 1.25)
			$Contents.material.set("shader_param/random_seed", 3)

		Skins.Oval:
			$Contents.material.set("shader_param/top", 0.9)
			$Contents.material.set("shader_param/blob_threshhold", 3)
			$Contents.material.set("shader_param/blob_scale_x", 1.25)
			$Contents.material.set("shader_param/blob_scale_y", 1)
			$Contents.material.set("shader_param/random_seed", 5)

		Skins.Rectangle:
			$Contents.material.set("shader_param/top", 0.8)
			$Contents.material.set("shader_param/blob_threshhold", 2)
			$Contents.material.set("shader_param/blob_scale_x", 0.75)
			$Contents.material.set("shader_param/blob_scale_y", 1)
			$Contents.material.set("shader_param/random_seed", 12)


func _on_Back_pressed() -> void:
	no -= 1
	if no <= -1:
		no = skins["contents"].size() - 1

	set_skin(no)


func _on_Next_pressed() -> void:
	no += 1
	if no >= skins["contents"].size():
		no = 0

	set_skin(no)
