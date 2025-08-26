extends Control

func _new_run():
	Signals.set_menu.emit("run_menu")
	Signals.new_run.emit(Run.new())
	
