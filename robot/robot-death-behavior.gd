class_name RobotDetahBehavior extends Behavior


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print("self death death")
	self.actor.scale *= 0.75
func _exit_tree():
	self.actor.queue_free()
