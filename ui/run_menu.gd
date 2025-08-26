extends Control

@export var hud: HUD

var run: Run

func _ready():
	run = Main.current_run

