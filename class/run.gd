extends Object

var data = {
	balance = 0.0,
	day = 1,
	seed = 0,
}

func _init(new_seed: int):
	if (new_seed != 0):
		data.seed = new_seed
	else:
		data.seed = randi()

func get_seed() -> int:
	return data.seed
	
func get_day() -> int:
	return data.day
	
func set_seed(new_seed: int):
	data.seed = new_seed
	
