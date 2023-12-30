extends Control
class_name 栏位框


@onready var 纹理按钮 = $"纹理按钮" as TextureButton
@onready var 物品数量: Label = $"物品数量"
@onready var _角色背包 = $"../../.." as 角色背包

@export var _栏位类型: Global.栏位类型

signal 生成命令(new_命令: String)

var _战斗系统 = Global._战斗系统 as 战斗系统

func _ready() -> void:
	# 连接信号到角色的方法
	生成命令.connect(_角色背包._角色.触发_生成命令)
	pass

func set_栏位数据(new_栏位数据: 栏位数据) -> void:
	_栏位类型 = new_栏位数据._栏位类型
	纹理按钮.texture_normal = new_栏位数据._物品数据._物品纹理
	if new_栏位数据._物品数量 > 1:
		物品数量.text = str(new_栏位数据._物品数量)
		物品数量.show()
	else :
		物品数量.hide()
	pass

func 触发_栏位按钮() -> void:
	
	pass
