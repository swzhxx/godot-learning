extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	if has_node("Robot"):
		$Robot.be_attacked(5)
	if has_node("Elf_F"):
		$Elf_F.be_attacked(5)
	