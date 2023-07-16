extends Control
class_name Inventory

var slots : Array = [0,0,0,0,0,0,0,0]
var item_names : Array = ["Knife","Katana","Glock"]
var inventory_slots
var current_slot = slots[0] #assign a variable to slots first array
var counter = 0

func setItemSlot():
	current_slot = str(item_names[2])
#	$GridContainer/SlotButton.set_tooltip_text(str(current_slot))
#	$GridContainer/SlotButton.set_text(str(current_slot))

func _process(_delta):
	setItemSlot()



