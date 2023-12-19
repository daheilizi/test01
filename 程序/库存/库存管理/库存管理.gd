extends Node
class_name 库存管理


var _栏位数组: Array[栏位数据]
var _库存类型: Global.库存类型
# 操作信号
signal 信号_添加_物品(new_物品: 栏位数据)
signal 信号_删除_物品(目标_物品 : 栏位数据)
signal 信号_修改_物品(目标_物品: 栏位数据)

# cudr
func 添加_物品(new_物品: 栏位数据) -> void:
	_栏位数组.append(new_物品)
	#print(new_物品._物品数据._物品名字_str)
	emit_signal("信号_添加_物品", new_物品)
	pass

func 删除_物品(目标_物品: 栏位数据) -> void:
	
	pass
	
func 修改_物品(目标_物品: 栏位数据) -> void:
	
	pass

func 连接UI信号方法(库存UI: Node) -> void:
	#print("库存UI连接UI信号方法")
	信号_添加_物品.connect(库存UI.触发_添加_物品)
	信号_删除_物品.connect(库存UI.触发_删除_物品)
	信号_修改_物品.connect(库存UI.触发_修改_物品)
	pass

func 加载库存数据(new_库存数据: 库存数据) -> void:
	if _库存类型 == new_库存数据._库存类型:
		for i in new_库存数据._栏位数组:
			添加_物品(i)
	pass
