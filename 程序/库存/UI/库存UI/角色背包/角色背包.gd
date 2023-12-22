extends Control
class_name 角色背包


const 栏位框_SCENE = preload("res://程序/库存/UI/栏位框/栏位框.tscn")

@onready var 列表= $"布局/列表" as VBoxContainer 

var _栏位数组: Array[栏位数据]
var _库存类型: Global.库存类型 = Global.库存类型.角色背包

func _ready() -> void:
	
	pass

# cudr
func 添加_物品(new_物品: 栏位数据) -> void:
	# 数据添加
	_栏位数组.append(new_物品)
	# UI添加
	var new_栏位框 = 栏位框_SCENE.instantiate()
	列表.add_child(new_栏位框)
	new_栏位框.set_栏位数据(new_物品)
	pass

func 删除_物品(目标_物品: 栏位数据) -> void:
	pass
	
func 修改_物品(目标_物品: 栏位数据) -> void:
	pass

func 加载库存数据(_库存数据: 库存数据) -> void:
	if _库存类型 == _库存数据._库存类型:
		for i in _库存数据._栏位数组:
			添加_物品(i)
	pass
