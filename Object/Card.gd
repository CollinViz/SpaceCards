extends Node2D
export var Card_name:=""
export var Card_position = "0,0"
export var Card_type:=""
export var Card_HP:=""
export var Card_ATC:=""
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT and event.is_pressed():
		print(Card_position)
		BoardData.canCardMove(Card_position)
