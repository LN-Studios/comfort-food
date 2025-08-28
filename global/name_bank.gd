extends Node

enum Names {
	Abigal,
	Bailey,
	Cass,
	Danielle,
	Elizabeth,
	Felicia,
	Gabriella,
	Hilda,
	Indira,
	Jill,
	Kaylee,
	Lauren,
	Minnie,
	Natalie,
	Ophelia,
	Penelope,
	Riley,
	Sammy,
	Tanya,
	Vanessa,
	Bridget,
	Lily,
	Ella,
	Kai,
	Sage,
	Fern,
	Adam,
	Andrew,
	Austin,
	Ben,
	Caleb,
	Carl,
	Carlos,
	Dallas,
	Daniel,
	David,
	Eugene,
	Flynn,
	Gordon,
	Henry,
	Isaac,
	James,
	Jesus,
	Kade,
	Lucas,
	Mike,
	Muhammad,
	Nathan,
	Omar,
	Oscar,
	Pedro,
	Percy,
	Quinn,
	Raul,
	Ryan,
	Sal,
	Thomas,
	Ulysses,
	Vander,
	Xavier,
	Wyatt,
	Zach,
	Zohran,
}

enum Blacklist {
}

func get_random_name() -> String:
	return pick_name(Names.values())
	
func pick_name(list: Array) -> String:
	var pick = list[randi()]
	while (check_blacklist(pick)):
		pick = list[randi()]
	return pick

func check_blacklist(name: String) -> bool:
	return Blacklist.has(name)
