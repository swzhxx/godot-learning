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

## @desc 返回带有 Player Group 的节点
func get_player()-> Node:
	var players = get_tree().get_nodes_in_group("Player")
	if len(players)>0: 
		return players[0]
	return null

func be_attacked(health:int)->void:
	self.health -= max(health , 0)
	pass

## @desc 计算离 Player Group 的距离
func get_player_distance() -> float:
	var player = get_player()
	if player == null:
		return INF
	return (player.position - self.position).length

## @desc 计算 Player Group 的方向向量
func get_player_direction() -> Vector2:
	var player = get_player()
	if player == null:
		return Vector2(0,0)
	else :
		return (player.position - self.position).normalized()
