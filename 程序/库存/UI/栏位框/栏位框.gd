extends Control
class_name 栏位框


@onready var 物品纹理: TextureRect = $"物品纹理"
@onready var 物品数量: Label = $"物品数量"

@export var _栏位类型: Global.栏位类型

func set_栏位数据(new_栏位数据: 栏位数据) -> void:
	if new_栏位数据._栏位类型 == _栏位类型:
		物品纹理.texture = new_栏位数据._物品数据._物品纹理
		if new_栏位数据._物品数量 > 1:
			物品数量.text = str(new_栏位数据._物品数量)
			物品数量.show()
		else :
			物品数量.hide()
	pass
