extends Control
class_name 角色头像显示单元


@onready var 角色头像: TextureRect = $"角色头像"
@onready var 角色编号: Label = $"角色编号"

var 角色先攻: int

func 加载角色数据(_角色: 角色) -> void:
	角色头像.texture = _角色.角色头像
	角色编号.text = _角色.char_编号
	角色先攻 = _角色.先攻
	pass
