extends TextureRect

var selected = false
var number_of_slots = 36
var slot = null

func resetSlots():
	self.set_tooltip_text("")

func _ready():
	resetSlots()
	
func followCursor(delta):
#	position = get_global_mouse_position() + Vector2(32,32)
	global_position = lerp(global_position, get_global_mouse_position(), 25 * delta) - Vector2(16,32) 
	
func _process(delta):
	if selected:
		followCursor(delta)
		

func _on_area_2d_input_event(viewport, event, shape_idx):
	if !Input.is_action_pressed("left_mouse"):
		selected = false
	else:
		selected = true
	if Input.is_action_just_released("left_mouse"):
		selected = false
