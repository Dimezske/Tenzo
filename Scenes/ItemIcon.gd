extends TextureButton

@onready var _area := Area2D
var selected = false

func resetSlots():
	self.set_tooltip_text("")

func _ready():
	resetSlots()
	
func followCursor():
	$Area2D/Sprite2D.global_position = get_global_mouse_position()
	
func _process(delta):
	if selected:
		followCursor()

func _on_gui_input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				selected = true
#				if event is InputEventScreenDrag:
				var mouse_pos: Vector2 = get_global_mouse_position()

				$Area2D/Sprite2D.global_position = Vector2(
				snapped(mouse_pos.x, -32),
				snapped(mouse_pos.y, -32)
			)
			followCursor()
		else:
			selected = false

	if Input.is_action_just_released("left_mouse"):
		selected = false
		var mouse_pos: Vector2 = get_global_mouse_position()

		$Area2D/Sprite2D.global_position = Vector2(
		snapped(mouse_pos.x, -32),
		snapped(mouse_pos.y, -32)
	) 

#func _on_gui_input(event):
#	if event is InputEventMouseButton:
#		if Input.is_action_just_released("left_mouse"):
#			if event.pressed:
#				selected = true
#		else:
#			selected = false
#
#		if event.action == "left_click":
#			var mouse_pos: Vector2 = event.position
#			var grid_cell_size: int = 32
#			var grid_center: Vector2 = Vector2(
#				snap_point(mouse_pos.x, grid_cell_size),
#				snap_point(mouse_pos.y, grid_cell_size)
#			)
#
#			$Area2D/Sprite2D.global_position = grid_center
