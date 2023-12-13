extends Control
class_name 行为列表


@onready var 列表: VBoxContainer = $"布局/列表"

func _ready() -> void:
	
	pass

func 触发_添加行为数据(new_行为数据: 行为数据):
	# 获得按钮实例
	var example_按钮 = 行为按钮实例化.get_实例(new_行为数据._行为名称)
	# 添加节点
	列表.add_child(example_按钮)
	example_按钮._行为数据 = new_行为数据
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
