class_name Run extends Object

var data = {
	balance = 0.0,
	day = 1,
	seed = 0,
}

var deck = []
var hand = []
var discard = []

func _init(new_seed = 0):
	if (new_seed != 0):
		data.seed = new_seed
	else:
		data.seed = randi()
		
func get_balance() -> float:
	return data.balance
	
func get_day() -> int:
	return data.day
	
func get_seed() -> int:
	return data.seed

func set_seed(new_seed: int):
	data.seed = new_seed

func new_day():
	data.day += 1
	reset_deck()

func reset_deck():
	deck.append_array(hand)
	deck.append_array(discard)
	
