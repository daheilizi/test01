extends Node2D
class_name 游戏世界


const 角色场景 = preload("res://程序/角色/角色.tscn")

var _角色_dict: Dictionary = {}

func _ready() -> void:
	Global._角色_dict = _角色_dict
	add_角色(load("res://程序/角色/角色预设/素晴/和真.tres"))
	add_角色(load("res://程序/角色/角色预设/素晴/惠惠.tres"))
	add_角色(load("res://程序/角色/角色预设/素晴/达克尼斯.tres"))
	add_角色(load("res://程序/角色/角色预设/素晴/阿库娅.tres"))
	pass

# 添加角色
func add_角色(new_角色预设: 角色预设) -> void:
	var new_角色: 角色 = 角色场景.instantiate()
	add_child(new_角色)
	new_角色.char_编号 = str(_角色_dict.size() + 1)
	_角色_dict[new_角色.char_编号] = new_角色
	new_角色.加载角色预设(new_角色预设)
	new_角色.游戏世界位置 = Vector2i(_角色_dict.size(),_角色_dict.size())
	pass
