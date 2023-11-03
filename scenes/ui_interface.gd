extends Control
@onready var player:Player = $"../../player"
@onready var bag = $bag

@onready var grabbed_slot = $grabbed_slot
var grabbed_slot_data:SlotData 

# Called when the node enters the scene tree for the first time.
func _ready():
	bag.set_inventory_data(player.inventory_data)
	player.inventory_data.inventory_interact.connect(on_inventory_interact)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if grabbed_slot.visible:
		grabbed_slot.global_position = get_global_mouse_position()
	pass

func on_inventory_interact(inventory_data:InvertoryData , index:int , button:int):
	match [grabbed_slot_data , button]:
		[null , MOUSE_BUTTON_LEFT]:
			grabbed_slot_data = inventory_data.grab_slot_data(index)
		[_ , MOUSE_BUTTON_LEFT]:
			grabbed_slot_data = inventory_data.drop_slot_data(grabbed_slot_data,index)			
	grabbed_slot_update()
		
func grabbed_slot_update():
	if grabbed_slot_data:
		grabbed_slot.show()
		grabbed_slot.set_slot_data(grabbed_slot_data)
	else :
		grabbed_slot.hide()
	
