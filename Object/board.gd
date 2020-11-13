extends Node2D



# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var baordStartPos = {"Card00":Vector2.ONE,
					 "Card01":Vector2.ONE,
					 "Card02":Vector2.ONE,
					 "Card10":Vector2.ONE,
					 "Card11":Vector2.ONE,
					 "Card12":Vector2.ONE,
					 "Card20":Vector2.ONE,
					 "Card21":Vector2.ONE,
					 "Card22":Vector2.ONE,
					}

# Called when the node enters the scene tree for the first time.
func _ready():
	baordStartPos.Card00 = $Card00.position
	baordStartPos.Card01 = $Card01.position
	baordStartPos.Card02 = $Card02.position
	baordStartPos.Card10 = $Card10.position
	baordStartPos.Card11 = $Card11.position
	baordStartPos.Card12 = $Card12.position
	baordStartPos.Card13 = $Card13.position 
	BoardData.connect("canCardMove",self,"canCardMove")


func canCardMove(cardID):
	print("Try move ",cardID,baordStartPos["Card22"])

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
