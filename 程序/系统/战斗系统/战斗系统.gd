extends Node
class_name 战斗系统


func _ready() -> void:
	# 节点准备好后在全局登记
	Global._战斗系统 = self
	pass
