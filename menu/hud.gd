extends Control

@export var balance_label: Label
@export var day_label: Label

const BAL_TEXT = "$ %.f"
const DAY_TEXT = "Day %d"

func _ready():
	pass

func set_balance_text(amt: float):
	balance_label.text = BAL_TEXT % amt

func set_day_text(day: int):
	day_label.text = DAY_TEXT % day
