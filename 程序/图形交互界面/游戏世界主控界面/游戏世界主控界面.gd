extends Control
class_name 游戏世界主控界面


const 角色头像显示单元_SCENE = preload("res://程序/图形交互界面/先攻顺序表/角色头像显示单元/角色头像显示单元.tscn")

@onready var 角色头像显示框: HBoxContainer = $"背景面板/布局水平分割/布局左侧竖直分割/左上/先攻顺序面板/布局/角色头像显示框"
@onready var ui_全部: RichTextLabel = %"全部"
@onready var ui_系统: RichTextLabel = %"系统"
@onready var ui_战斗: RichTextLabel = %"战斗"

var _角色_dict: Dictionary
var _角色_arr: Array[角色]

func _ready() -> void:
	# 连接信号 Global._消息系统.信号_发送消息
	Global._消息系统.信号_发送消息.connect(触发_发送消息)
	# 获取全局_角色_dict
	_角色_dict = Global._角色_dict
	_角色_arr = Global._角色_arr
	pass

func 触发_发送消息(para_消息类型: Global.消息类型, para_消息内容: String) -> void:
	# 为’全部‘添加消息内容
	ui_全部.add_text(para_消息内容)
	match para_消息类型:
		Global.消息类型.系统提示:
			ui_系统.add_text(para_消息内容)
		Global.消息类型.战斗:
			ui_战斗.add_text(para_消息内容)
	pass

func 触发_添加测试角色() -> void:
	Global._游戏世界.add_角色(load("res://程序/角色/角色预设/素晴/和真.tres"))
	Global._游戏世界.add_角色(load("res://程序/角色/角色预设/素晴/惠惠.tres"))
	Global._游戏世界.add_角色(load("res://程序/角色/角色预设/素晴/达克尼斯.tres"))
	Global._游戏世界.add_角色(load("res://程序/角色/角色预设/素晴/阿库娅.tres"))
	初始化_先攻顺序()
	pass

func 触发_更新先攻顺序() -> void:
	更新先攻顺序()
	pass

func 初始化_先攻顺序() -> void:
	for i in _角色_arr:
		var new_角色头像显示单元 = 角色头像显示单元_SCENE.instantiate()
		角色头像显示框.add_child(new_角色头像显示单元)
		new_角色头像显示单元.加载角色数据(i)
	pass

func 更新先攻顺序() -> void:
	
	pass
