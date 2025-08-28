extends Node

var Rarity = {
	Common = 75,
	Uncommon = 30,
	Rare = 12,
	Ultra = 2,
}

var Pref = {
	Loves = 0.25,
	Likes = 0.1,
	Dislikes = -0.1,
	Hates = -0.25,
}


func total_rarity() -> int:
	var total = 0
	for v in Rarity.values():
		total += v
	return total

func get_rarity_char(r: int) -> String:
	match r:
		Rarity.Common:
			return "C"
		Rarity.Uncommon:
			return "U"
		Rarity.Rare:
			return "R"
		Rarity.Ultra:
			return "UU"
		_:
			return "?"
