extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var player_lenght = 450
export (int) var speed = 50 
var velocity = Vector2.ZERO
var bHasPlayer = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	if bHasPlayer== true:
		velocity.x -= speed * delta
		if velocity.x < 0:
			velocity.x = speed
		velocity = move_and_slide(velocity, Vector2.UP)
		
 
func _on_StaticBody2D_body_entered(body):
	if body.name == "PlayerBlock": 
		bHasPlayer = true
		$Timer.start()
		velocity.x = speed
	#	move_and_slide(Vector2(player_lenght, 0),Vector2.UP) 



func _on_Timer_timeout():
	pass
	#velocity.x= 0
	#bHasPlayer=false


func _on_StaticBody2D_body_exited(body):
	velocity.x= 0
	bHasPlayer=false
