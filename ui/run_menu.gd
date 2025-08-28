extends Control

@export var hud: HUD
@export var sample_card: Control

var run: Run

func _ready():
	run = Main.current_run
	_random()

func _random():
	sample_card.render(ItemLib.get_random_item())
	
