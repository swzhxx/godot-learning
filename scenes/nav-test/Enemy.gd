extends CharacterBody2D


@export var speed = 50
@export var player_node:Player
@onready var navigation_agent_2d:NavigationAgent2D =  $Navigation/NavigationAgent2D

func _ready():
	$Graphic/AnimatedSprite2D.play()

func _physics_process(delta):
	if not navigation_agent_2d.is_navigation_finished():
		var direction =to_local(navigation_agent_2d.get_next_path_position()).normalized()
		velocity = speed * direction	
		move_and_slide()


func _on_timer_timeout():
	navigation_agent_2d.target_position = player_node.position
	pass # Replace with function body.
