class_name ItemLib extends Node

static var Rarity = {
	Common = 50,
	Uncommon = 25,
	Rare = 10,
	Ultra = 1,
}

var items_list = [
	{
		name = "Biscuit",
		props = [Prop.Type.Grain, Prop.Flavor.Savory],
		rarity = Rarity.Common,
		value = 2,
	},
	{
		name = "T-Bone Steak",
		props = [Prop.Type.Meat],
		rarity = Rarity.Rare,
		value = 0,
	},
	{
		name = "Cornbread",
		props = [Prop.Type.Grain, Prop.Flavor.Sweet],
		rarity = Rarity.Common,
		value = 0,
	},
]

var items_common = []
var items_uncommon = []
var items_rare = []
var items_ultra = []

func _ready():
	load_items()

func load_items():
	for item_data in items_list:
		var item = Item.new(item_data)
		#very gross way to go about this but whatever
		match (item.get_rarity):
			Rarity.Common:
				items_common.add(item)
			Rarity.Uncommon:
				items_uncommon.add(item)
			Rarity.Rare:
				items_rare.add(item)
			Rarity.Ultra:
				items_ultra.add(item)
