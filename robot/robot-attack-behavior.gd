class_name RobotAttackBehavior extends Behavior


var is_attack = false
var ori_color
# Called when the node enters the scene tree for the first time.
func _ready():
	print("attack behavior ready")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if is_attack == true:
		return 
	else: 
		excute_attack(delta)
		
func excute_attack(delta):
	is_attack = true 
	ori_color = self.actor.modulate
	self.actor.modulate = Color.hex(0x2974cbff)
	self.actor.get_node("Attack1").visible = true
func _exit_tree():
	print("attack behavior exit")
	self.actor.modulate = ori_color

