extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$NavigationAgent2D.target_position = Vector2(192,0)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _physics_process(delta):
	var next_position =  $NavigationAgent2D.get_next_path_position()
	var direction = ((next_position - self.position) as Vector2).normalized()
	self.position = direction * 10 + self.position
	pass
