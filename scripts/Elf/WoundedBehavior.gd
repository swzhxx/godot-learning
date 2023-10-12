extends Behavior


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func before_run(actor:Node , blackboard:Blackboard):
	super(actor,blackboard)
	self.actor.get_node("AnimatedSprite2D").play("hitted")
	self.actor.get_node("AnimationPlayer").play("hitted")
	
