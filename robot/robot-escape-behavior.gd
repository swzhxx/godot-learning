class_name RotbotEscapeBehavior extends Behavior


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# 逃跑的时候需要反向
	var direction = self.actor.get_player_direction()
	direction *= -1
	self.actor.position += self.actor.speed * delta * direction	
	
