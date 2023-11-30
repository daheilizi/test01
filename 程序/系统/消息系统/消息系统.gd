extends Node
class_name 消息系统


# 信号
signal 信号_发送消息(para_消息类型: Global.消息类型, para_消息内容: String)


func _ready() -> void:
	# 节点准备好后在全局登记
	Global._消息系统 = self
	pass
