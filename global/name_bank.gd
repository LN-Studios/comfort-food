extends Node

enum Fem {
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
}

enum Nonbinary {
	Kai,
	Sage,
	Fern,
}

enum Masc {
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

func get_fem() -> String:
	return pick_name(Fem.values())

func get_nonbinary() -> String:
	return pick_name(Nonbinary.values())

func get_masc() -> String:
	return pick_name(Masc.values())
	
func pick_name(list: Array) -> String:
	var pick = list[randi()]
	while (check_blacklist(pick)):
		pick = list[randi()]
	return pick

func check_blacklist(name: String) -> bool:
	return Blacklist.has(name)
