class_name RobotRound extends BehaviorActionLeaf

@export var round_time_duration:float = 2


enum ROUND_FLAG  {
	Start,
	End,
	WaitNext
}
var round_flag = ROUND_FLAG.WaitNext

var robot:Robot
# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.

func tick(actor:Node,blackboard:Blackboard) -> int:
	self.robot = actor	
	if round_flag == ROUND_FLAG.End:
		round_flag = ROUND_FLAG.WaitNext
		return FAILURE
	if round_flag == ROUND_FLAG.WaitNext:
		$RoundTimer.start(self.round_time_duration)
		round_flag = ROUND_FLAG.Start
			
		return RUNNING	
	if round_flag == ROUND_FLAG.Start:
		return RUNNING		
	return SUCCESS


func _on_round_timer_timeout() -> void :
	round_flag = ROUND_FLAG.End
	
