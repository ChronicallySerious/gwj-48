extends Spatial

export var speed = 100

func _input(event):
	var movement_direction = Vector3(0, 0, 0)
	if event.is_action_pressed("move_forward"):
		movement_direction.z = 1;
	if event.is_action_pressed("move_backward"):
		movement_direction.z = -1;
	if event.is_action_pressed("move_right"):
		movement_direction.x = 1;
	if event.is_action_pressed("move_left"):
		movement_direction.x = -1;
	
	self.translate(movement_direction.normalized() * speed)
