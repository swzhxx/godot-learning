extends Resource

class_name InvertoryData

signal inventory_interact(inventory_data:InvertoryData , index:int , button:int)
signal inventory_update(invenory_data:InvertoryData)
@export var slot_datas:Array[SlotData] 

func on_slot_clicked(index:int , button:int):
	inventory_interact.emit(self, index , button)
	

func grab_slot_data(index:int)->SlotData:
	var slot_data = slot_datas[index]
	if slot_data:
		slot_datas[index] = null
		inventory_update.emit(self)
		return slot_data
	else:
		return null
