extends Node
class_name 战斗系统


var _角色_dict: Dictionary
var _角色_arr: Array[角色]

func _ready() -> void:
	# 节点准备好后在全局登记
	Global._战斗系统 = self
	# 引用 _角色_dict
	_角色_dict = Global._角色_dict
	# 引用 _角色_arr 
	_角色_arr = Global._角色_arr
	pass
