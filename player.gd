extends RigidBody2D
var force = 1000

# Called when the node enters the scene tree for the first time.
func _ready():
	# apply_impulse(Vector2(25, 25))
	# var force = 10
	# para acceder a la variable force local = print(force)
	# para acceder a la variable force global = print(self.force)
	# print(force)
	# print(self.force)
	var result = add(5, 6)
	print(result)


func _process(delta):
	pass
	
func _physics_process(delta):
	if Input.is_action_pressed("move_right"):
		apply_force(Vector2(force, 0))
	if Input.is_action_pressed("move_left"):
		apply_force(Vector2(-force, 0))
	if Input.is_action_pressed("move_up"):
		apply_force(Vector2(0, -force))
	if Input.is_action_pressed("move_down"):
		apply_force(Vector2(0, force))

func add(number1, number2):
	var result = number1 + number2
	return result;
