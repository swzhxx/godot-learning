class_name RobotRoundBehavior extends Behavior


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var players = get_tree().get_nodes_in_group("Player")
	var direction:Vector2
	if len(players) > 0:
		var player = players[0]
		direction =  (player.position - self.actor.position).normalized()
	else :
		direction = Vector2(0,0)
	self.actor.position +=  direction * delta * self.actor.speed	
	pass


