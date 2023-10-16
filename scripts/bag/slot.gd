extends Control

signal slot_clicked(index :int , button:int)

@onready var texture_rect = $TextureRect
@onready var label = $Label

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_slot_data(slot_data:SlotData):
	var item_data = slot_data.item_data
	texture_rect.texture = item_data.item_texture
	if slot_data.quantity > 1 : 
		label.show() 
		label.text = "x%s" % slot_data.quantity
	else :
		label.hide()


func _on_gui_input(event):
	if event is InputEventMouseButton and (event.button_index == MOUSE_BUTTON_LEFT or event.button_index == MOUSE_BUTTON_RIGHT ) and event.is_pressed(): 
		slot_clicked.emit(get_index() , event.button_index)
		print(get_index(), " ",event.button_index)
	pass # Replace with function body.
