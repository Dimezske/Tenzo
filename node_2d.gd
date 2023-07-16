extends TextureButton

@onready var _area := Area2D
var selected = false

const GRID_SIZE := 64

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
		
#func position_snapped(pos:Vector2):
#	return (pos / CELL_SIZE).floor() * CELL_SIZE

#func _input(event: InputEvent) -> void:
#	if event is InputEventScreenDrag:
#		var mouse_pos: Vector2 = get_global_mouse_position()
#
#		_area.position = Vector2(
#			snapped(mouse_pos.x, 32),
#			snapped(mouse_pos.y, 32)
#		)


