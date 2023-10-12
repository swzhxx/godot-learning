class_name RobotRound extends BehaviorActionLeaf


@export var is_can_interrupted:bool = true
@export var interrupted_blackboard_condition_expression:String = "hitted" 
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.

func tick(actor:Node,blackboard:Blackboard) -> int:
	if blackboard.get_value(interrupted_blackboard_condition_expression):
		return SUCCESS
	return RUNNING



