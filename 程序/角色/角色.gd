extends Node
class_name 角色


@onready var ui_血量 = %血量
@onready var ui_血量_数值 = %血量数值
@onready var ui_能量 = %能量
@onready var ui_能量_数值 = %能量数值
@onready var ui_护甲 = %护甲
@onready var ui_护甲_数值 = %护甲数值
@onready var ui_背包: Control = $"卡片/布局/左侧面板/背包"
@onready var ui_技能栏: Control = $"卡片/布局/右侧面板/技能栏"

var char_编号: String
var char_名字: String
var char_等级: int

var 血量: int: set = _set_血量
func _set_血量(new_血量: int) -> void:
	血量 = new_血量
	ui_血量.value = 血量
	ui_血量_数值.text = str(血量) + "/" + str(血量_max)
	pass

var 血量_max: int: set = _set_血量_max
func _set_血量_max(new_血量_max: int) -> void:
	血量_max = new_血量_max
	ui_血量.max_value = 血量_max
	ui_血量_数值.text = str(血量) + "/" + str(血量_max)
	pass

var 能量: int: set = _set_能量
func _set_能量(new_能量: int) -> void:
	能量 = new_能量
	ui_能量.value = 能量
	ui_能量_数值.text = str(能量) + "/" + str(能量_max)
	pass

var 能量_max: int: set = _set_能量_max
func _set_能量_max(new_能量_max: int) -> void:
	能量_max = new_能量_max
	ui_能量.max_value = 能量_max
	ui_能量_数值.text = str(能量) + "/" + str(能量_max)
	pass

var 护甲: int: set = _set_护甲
func _set_护甲(new_护甲: int) -> void:
	护甲 = new_护甲
	ui_护甲.value = 护甲
	ui_护甲_数值.text = str(护甲) + "/" + str(护甲_max)
	pass

var 护甲_max: int: set = _set_护甲_max
func _set_护甲_max(new_护甲_max: int) -> void:
	护甲_max = new_护甲_max
	ui_护甲.max_value = 护甲_max
	ui_护甲_数值.text = str(护甲) + "/" + str(护甲_max)
	pass

var 先攻: int

# 职业
@export var _职业集: 职业集
# 行为
@export var _行为集: 行为集
# 库存
@export var _库存数据: 库存数据
