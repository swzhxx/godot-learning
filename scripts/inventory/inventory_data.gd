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

func drop_slot_data(grabbed_slot_data:SlotData , index:int)->SlotData: 
	var slot_data = slot_datas[index]
	var return_slot_data:SlotData
	if slot_data and slot_data.can_fully_merge_with(grabbed_slot_data):
		slot_data.full_merge_with(grabbed_slot_data)
	elif slot_data and slot_data.exceed_fully_merge_with(grabbed_slot_data):
		slot_datas[index] = grabbed_slot_data
		return_slot_data = slot_data
	elif slot_data and slot_data.exceed_fully_merge_with_swap(grabbed_slot_data):
		return_slot_data = slot_data.create_fully_merge_swap(grabbed_slot_data)
	else:
		slot_datas[index] = grabbed_slot_data 
		return_slot_data = slot_data
	inventory_update.emit(self)
	return return_slot_data
