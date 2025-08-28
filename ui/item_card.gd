extends Control

@export var name_label: Label
#@export var prop_label: Label
@export var rarity_label: Label
@export var value_label: Label

var item: Item

func render(i: Item):
	item = i
	name_label.text = item.get_name()
	rarity_label.text = "%s" % Var.get_rarity_char(item.get_rarity())
	value_label.text = "%.f" % item.get_value()
	set_prop_labels()

func set_prop_labels():
	clear_props()
	var props = item.get_props()
	for prop in props:
		var new_label = name_label.duplicate()
		new_label.text = prop
		name_label.get_parent().add_child(new_label)
		
func clear_props():
	var box = name_label.get_parent()
	while (box.get_child_count() > 2):
		box.remove_child(box.get_child(-1))
		
