extends Node2D
class_name 游戏世界


const 角色_SCENE = preload("res://程序/角色/角色.tscn")

var _角色_dict: Dictionary
var _角色_arr: Array[角色]

func _ready() -> void:
	# 节点准备好后在全局登记
	Global._游戏世界 = self
	# 获取全局_角色_dict
	_角色_dict = Global._角色_dict
	_角色_arr = Global._角色_arr
	pass

# 添加角色
func add_角色(new_角色预设: 角色预设) -> void:
	var new_角色: 角色 = 角色_SCENE.instantiate()
	add_child(new_角色)
	new_角色.char_编号 = str(_角色_dict.size() + 1)
	_角色_dict[new_角色.char_编号] = new_角色
	_角色_arr.append(new_角色)
	new_角色.加载角色预设(new_角色预设)
	new_角色.游戏世界位置 = Vector2i(_角色_dict.size(),_角色_dict.size())
	pass
