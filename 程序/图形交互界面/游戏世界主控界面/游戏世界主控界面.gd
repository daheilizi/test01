extends Control
class_name 游戏世界主控界面


@onready var 全部 = %全部

func _ready() -> void:
	# 连接信号 Global._消息系统.信号_发送消息
	Global._消息系统.信号_发送消息.connect(触发_发送消息)
	pass


func 触发_发送消息(para_消息类型: Global.消息类型, para_消息内容: String) -> void:
	# 为’全部‘添加消息内容
	全部.add_text(para_消息内容)
	pass
