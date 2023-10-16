extends Control

@onready var item_grid = $PanelContainer/MarginContainer3/item_grid

const Slot = preload("res://scripts/bag/slot.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_inventory_data(inventory_data:InvertoryData):
	inventory_data.inventory_update.connect(popluate_invertory_data)
	popluate_invertory_data(inventory_data)
	

func popluate_invertory_data(inventory_data):
	for i in item_grid.get_children():
		i.queue_free()
	for slot_data in inventory_data.slot_datas:
		var slot = Slot.instantiate()
		slot.slot_clicked.connect(inventory_data.on_slot_clicked)
		item_grid.add_child(slot)
		if slot_data :
			slot.set_slot_data(slot_data)
	pass
