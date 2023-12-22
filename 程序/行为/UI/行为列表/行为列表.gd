extends Control
class_name 行为列表


@onready var 列表: VBoxContainer = $"布局/列表"

var 行为集: Array[行为数据]

func _ready() -> void:
	
	pass

# cudr
func 添加_行为数据(new_行为数据: 行为数据):
	# 数据添加
	行为集.append(new_行为数据)
	# UI添加
	var example_按钮 = 行为按钮实例化.get_实例(new_行为数据._行为名称) # 获得按钮实例
	列表.add_child(example_按钮) # 添加节点
	example_按钮._行为数据 = new_行为数据
	pass

func 删除_行为数据(char_行为集: Array[行为数据]):
	
	pass

func 修改_行为数据(char_行为集: Array[行为数据]):
	
	pass

func 加载_行为集数据(new_行为集: Array[行为数据]) -> void:
	for i in new_行为集:
		添加_行为数据(i)
	pass
