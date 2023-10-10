class_name Behavior extends Node

var actor:Node 
var blackboard:Blackboard

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func before_run(actor:Node , blackboard:Blackboard):
	self.actor = actor 
	self.blackboard = blackboard
	pass
	
func after_run(actor:Node , blackboard:Blackboard):
	pass
