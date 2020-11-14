extends KinematicBody2D

onready var anim_player = $AnimationPlayer

export (int) var speed = 600
export (int) var jump_speed = -1000
export (int) var gravity = 3000


var velocity = Vector2.ZERO

func get_input()-> int:
	var move_dir = 0
	velocity.x = 0
	if Input.is_action_pressed("walk_right"):
		velocity.x += speed
		move_dir += 1
	if Input.is_action_pressed("walk_left"):
		velocity.x -= speed
		move_dir -= 1
	return move_dir

func _physics_process(delta):
	var grounded = is_on_floor()
	var move_dir = get_input()
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)
	if Input.is_action_just_pressed("jump"):
		if is_on_floor():
			velocity.y = jump_speed
	if grounded:
		if move_dir == 0:
			if anim_player.is_playing() and anim_player.current_animation =="jump":
				play_anim("land")
			else:
				play_anim("start")
		if move_dir == 1:
			play_anim("run_left")
		if move_dir == -1:
			play_anim("run_right")
	else:
		play_anim("jump")

func play_anim(anim_name):
	if anim_player.is_playing() and anim_player.current_animation == anim_name:
		return
	anim_player.play(anim_name)
