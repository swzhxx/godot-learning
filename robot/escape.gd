class_name RobotEscape extends ActionLeaf


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func tick(actor:Node , blackboard:Blackboard ) -> int:
	self.name = 'RobotEscape(Running)'		
	return RUNNING

func after_run(actor:Node ,blackboard:Blackboard) -> void : 
	self.name = 'RobotEscape'
