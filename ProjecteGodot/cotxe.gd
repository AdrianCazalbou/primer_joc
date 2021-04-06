extends KinematicBody2D


var velocitat := Vector2(100, 0)
var acceleracio : Vector2 = Vector2(2, 3)
var velocitat_max = 100


# Called when the node enters the scene tree for the first time.
func _ready():
	pass 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocitat = Vector2.ZERO
	velocitat.x = Input.get_action_strength("dreta1") - Input.get_action_strength("esquerra1")
	velocitat.y = Input.get_action_strength("abaix1") - Input.get_action_strength("adalt1")
	move_and_slide(velocitat * velocitat_max)
	
	if Input.get_action_strength("adalt1"):
		rotation_degrees = 0 
	if Input.get_action_strength("abaix1"):
		rotation_degrees = 180
	if Input.get_action_strength("dreta1"):
		rotation_degrees = 90
	if Input.get_action_strength("esquerra1"):
		rotation_degrees = 270 
	if Input.get_action_strength("abaix1") and Input.get_action_strength("dreta1"):
		rotation_degrees = 135
	if Input.get_action_strength("abaix1") and Input.get_action_strength("esquerra1"):
		rotation_degrees = 225
	if Input.get_action_strength("adalt1") and Input.get_action_strength("dreta1"):
		rotation_degrees = 45
	if Input.get_action_strength("adalt1") and Input.get_action_strength("esquerra1"):
		rotation_degrees = 315
	



	
	



