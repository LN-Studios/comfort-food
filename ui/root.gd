extends Control

const SCENE_PATH = "res://scenes/%s.tscn"

func _ready():
	Signals.set_menu.connect(set_menu)

func set_menu(menu_name: String):
	var new_menu = load(SCENE_PATH % menu_name)
	add_child(new_menu.instantiate())
