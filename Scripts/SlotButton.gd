extends Button
class_name Slots
 
var selected = false
var number_of_slots = 36
var slot = null


func resetSlots():
	self.set_tooltip_text("")

func _ready():
	resetSlots()
	
#func followCursor():
#	position = get_global_mouse_position() + Vector2(-32,-64)
#
#func _process(delta):
#	if selected:
#		followCursor()

#func _on_inventory_component_mouse_entered():
#	if Input.is_action_just_pressed("left_mouse"):
#		if pressed:
#			selected = true
#		else:
#			selected = false
#	if Input.is_action_just_released("left_mouse"):
#		selected = false
		
#	counter += 1
#	print("test", counter)
