### 带有 Behavior 行为的 ActionLeaf 节点。
### 将意图抽象，每个意图触发对应的 Behavior 脚本。
### 在进入 before_run 时，节点挂载，在 after_run 时，节点卸载


class_name  BehaviorActionLeaf extends ActionLeaf

@export var behavior:Script = load("res://beehave-extra/blank-behavior.gd")

var _behavior_node:Node
# Called when the node enters the scene tree for the first time.
func _init():	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func before_run(actor:Node , blackboard:Blackboard)-> void:
	if behavior:
		_behavior_node = behavior.new()
		add_child(_behavior_node)
		_behavior_node.before_run(actor, blackboard)
	pass

func after_run(actor:Node , blackboard:Blackboard) -> void:
	if _behavior_node:
		_behavior_node.after_run(actor, blackboard)
		remove_child(_behavior_node)
	pass
