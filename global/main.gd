extends Node

var current_run: Run

func _ready():
	Signals.new_run.connect(set_run)

func set_run(run: Run):
	current_run = run
