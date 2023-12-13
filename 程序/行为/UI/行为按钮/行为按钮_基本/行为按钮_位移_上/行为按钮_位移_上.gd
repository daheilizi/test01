extends TextureButton


var _行为数据: 行为数据: set = _set_行为数据
func _set_行为数据(new_行为数据: 行为数据) -> void:
	texture_normal = new_行为数据._行为_texture
	pass
