extends Node2D
class_name 角色


const 游戏世界坐标栏长宽_const = Vector2i(60,60)
const 游戏世界网格边长_const = 230
const 游戏世界角色网格偏移_const = Vector2i(15,5)

@onready var ui_编号: Label = %"编号"
@onready var ui_角色名: Label = %"角色名"
@onready var ui_等级: Label = %"等级"
@onready var ui_血量: TextureProgressBar = %"血量"
@onready var ui_血量_数值: Label = %血量数值
@onready var ui_能量: TextureProgressBar = %能量
@onready var ui_能量_数值: Label = %能量数值
@onready var ui_护甲: TextureProgressBar = %护甲
@onready var ui_护甲_数值: Label = %护甲数值
@onready var ui_背包: Control = $"卡片/布局/左侧面板/背包"
@onready var ui_技能栏: Control = $"卡片/布局/右侧面板/技能栏"
@onready var 角色形象精灵: Sprite2D = $"卡片/角色形象精灵"

var char_编号: String: set = _set_char_编号
func  _set_char_编号(new_char_编号) -> void:
	char_编号 = new_char_编号
	ui_编号.text = char_编号
	pass

var char_名字: String: set = _set_char_名字
func  _set_char_名字(new_char_名字) -> void:
	char_名字 = new_char_名字
	ui_角色名.text = char_名字
	pass

@export var char_等级: int: set = _set_char_等级
func  _set_char_等级(new_char_等级) -> void:
	char_等级 = new_char_等级
	ui_等级.text = "lv:" + str(char_等级)
	pass

@export var char_职业集: Array[职业数据和等级]
@export var char_行为集: Array[行为数据]
@export var char_背包: 库存数据

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

var 游戏世界位置: Vector2i: set = _set_游戏世界位置
func _set_游戏世界位置(new_游戏世界位置: Vector2i) -> void:
	游戏世界位置 = new_游戏世界位置
	position = (游戏世界坐标栏长宽_const + 游戏世界角色网格偏移_const +  
			游戏世界网格边长_const * (游戏世界位置 - Vector2i(1,1)))
	pass

var 先攻: int

func _set_角色形象(new_char_形象: Texture2D) ->void:
	角色形象精灵.texture = new_char_形象
	pass

func 加载角色预设(new_角色预设: 角色预设) -> void:
	char_名字 = new_角色预设.char_名字
	char_等级 = new_角色预设.char_等级
	血量 = new_角色预设.血量
	血量_max = new_角色预设.血量_max
	能量 = new_角色预设.能量
	能量_max = new_角色预设.能量_max
	护甲 = new_角色预设.护甲
	护甲_max = new_角色预设.护甲_max
	_set_角色形象(new_角色预设.char_形象)
	pass

