class_name RobotThinking extends ActionLeaf


@export var thinking_duration:float = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func tick(actor:Node,blackborad:Blackboard) -> int:	
	self.name = "RobotThinking(Running)"
	return RUNNING



func after_run(actor:Node , blackborad:Blackboard) -> void:
	self.name = 'RobotThinking'

func _on_thinking_timer_timeout():
	pass # Replace with function body.
