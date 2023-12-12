extends Control
class_name 行为列表

func _ready() -> void:
	
	pass

func 触发_添加行为数据(char_行为集: Array[行为数据]):
	
	pass

func 触发_删除行为数据(char_行为集: Array[行为数据]):
	
	pass

func 触发_修改行为数据(char_行为集: Array[行为数据]):
	
	pass

func _更新_ui_行为列表(char_行为集: Array[行为数据]) -> void:
	for i in char_行为集:
		print(i)
		pass
	pass
