extends ColorRect
func _process(delta):
	material.set_shader_param("texture_size", rect_size)
	material.set_shader_param("mouse_pos", get_global_mouse_position())

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
