extends Node
class_name 行为数据管理


var 行为集: Array[行为数据]

# 操作信号
signal 信号_添加_行为数据(new_行为数据: 行为数据)
signal 信号_删除_行为数据(para_行为集: Array[行为数据])
signal 信号_修改_行为数据(para_行为集: Array[行为数据])

# cudr
func 添加_行为数据(new_行为数据: 行为数据) -> void:
	行为集.append(new_行为数据)
	emit_signal("信号_添加_行为数据", new_行为数据)
	pass

func 删除_行为数据(行为名称: Global.行为名称) -> void:
	
	pass
	
func 修改_行为数据(目标_行为数据: 行为数据) -> void:
	
	pass
	
func 加载_预设行为数据(new_行为集: Array[行为数据]) -> void:
	for i in new_行为集:
		添加_行为数据(i)
	pass

