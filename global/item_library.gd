extends Node

var blank = [
	{
		name = "",
		props = [],
		value = 0,
	},
]

var items_common = [
	{
		name = "Biscuit",
		props = [Prop.Type.Grain, Prop.Flavor.Savory],
		value = 2,
	},
	{
		name = "Cornbread",
		props = [Prop.Type.Grain, Prop.Flavor.Sweet],
		value = 2,
	},
	{
		name = "Peas",
		props = [Prop.Type.Vegetable],
		value = 1,
	},
	{
		name = "Broccoli",
		props = [Prop.Type.Vegetable],
		value = 2,
	},
	{
		name = "Slider",
		props = [Prop.Type.Meat, Prop.Type.Grain],
		value = 3,
	},
	{
		name = "Salad",
		props = [Prop.Type.Vegetable],
		value = 3,
	},
]

var items_uncommon = [
	{
		name = "Onion Rings",
		props = [Prop.Type.Vegetable, Prop.Type.Grain],
		rarity = Var.Rarity.Uncommon,
		value = 4,
	},
	{
		name = "Asparagus",
		props = [Prop.Type.Vegetable, Prop.Flavor.Salty],
		rarity = Var.Rarity.Uncommon,
		value = 5,
	},
	{
		name = "Burger",
		props = [Prop.Type.Meat, Prop.Type.Grain],
		value = 4,
	},
]

var items_rare = [
	{
		name = "Steak",
		props = [Prop.Type.Meat],
		rarity = Var.Rarity.Rare,
		value = 10,
	},
]

var items_ultra = [
	{
		name = "Caviar",
		props = [],
		rarity = Var.Rarity.Rare,
		value = 40,
	},
]

func _ready():
	set_rarity(items_common, Var.Rarity.Common)
	set_rarity(items_uncommon, Var.Rarity.Uncommon)
	set_rarity(items_rare, Var.Rarity.Rare)
	set_rarity(items_ultra, Var.Rarity.Ultra)

func set_rarity(arr: Array, r: int):
	for item in arr:
		item.rarity = r

func random_item(arr: Array) -> Item:
	var data = arr.pick_random()
	return Item.new(data)

func get_random_item() -> Item:
	var r = randi() % Var.total_rarity()
	if (r < Var.Rarity.Common):
		return random_item(items_common)
	r -= Var.Rarity.Common
	if (r < Var.Rarity.Uncommon):
		return random_item(items_uncommon)
	r -= Var.Rarity.Uncommon
	if (r < Var.Rarity.Rare):
		return random_item(items_rare)
	else:
		return random_item(items_ultra)
