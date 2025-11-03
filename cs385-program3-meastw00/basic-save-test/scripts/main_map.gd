extends Node2D

var save_path = "user://variable.save"

var variable1 = 0
var variable2 = 0
var variable3 = 0

@onready var num_1: Label = $Num1
@onready var num_2: Label = $Num2
@onready var num_3: Label = $Num3


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	num_1.text = str(variable1)
	num_2.text = str(variable2)
	num_3.text = str(variable3)


func _on_plus_button_1_pressed() -> void:
	variable1 += 1

func _on_minus_button_1_pressed() -> void:
	variable1 -= 1


func _on_plus_button_2_pressed() -> void:
	variable2 += 1

func _on_minus_button_2_pressed() -> void:
	variable2 -= 1


func _on_plus_button_3_pressed() -> void:
	variable3 += 1

func _on_minus_button_3_pressed() -> void:
	variable3 -= 1


func _on_save_button_pressed() -> void:
	save()

func _on_load_button_pressed() -> void:
	load_data()


func save():
	var file = FileAccess.open(save_path, FileAccess.WRITE)
	file.store_var(variable1)
	file.store_var(variable2)
	file.store_var(variable3)

func load_data():
	if FileAccess.file_exists(save_path):
		var file = FileAccess.open(save_path, FileAccess.READ)
		variable1 = file.get_var(variable1)
		variable2 = file.get_var(variable2)
		variable3 = file.get_var(variable3)
	else:
		print("no data saved...")
		variable1 = 0
		variable2 = 0
		variable3 = 0
		
