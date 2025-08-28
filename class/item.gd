class_name Item extends Object

var data = {
	name = "",
	props = [],
	rarity = 0,
	value = 0,
}

func _init(new_data: Dictionary):
	data.merge(new_data, true)

func get_name() -> String:
	return data.name
	
func get_props() -> Array:
	return data.props

func get_rarity() -> int:
	return data.rarity

func get_value() -> float:
	return data.value
