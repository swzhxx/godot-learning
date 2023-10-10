class_name Robot extends Sprite2D


var velocity:Vector2

@export var speed: float = 100
@export var health: int = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	$Blackboard.set_value("health" , health)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	$Blackboard.set_value("health" , health)
	pass
