extends Resource
class_name SlotData

@export_range(1,99) var quantity:int = 1
@export var item_data:ItemData


func can_fully_merge_with(other_slot_data:SlotData)->bool:
	return item_data == other_slot_data.item_data and item_data.stackable and item_data.quantity + other_slot_data.quantity <= 99

func full_merge_with(other_slot_data:SlotData):
	quantity += other_slot_data.quantity

func exceed_fully_merge_with(other_slot_data:SlotData)->bool:
	return item_data == other_slot_data.item_data and item_data.stackable and quantity == 99 and other_slot_data.quantity < 99 

func exceed_fully_merge_with_swap(other_slot_data:SlotData)->bool:
	return item_data == other_slot_data.item_data and item_data.stackable and quantity < 99 and other_slot_data.quantity < 99 

func create_fully_merge_swap(other_slot_data:SlotData) -> SlotData :
	other_slot_data.quantity = other_slot_data.quantity - (99 - quantity)
	quantity = 99
	return other_slot_data
