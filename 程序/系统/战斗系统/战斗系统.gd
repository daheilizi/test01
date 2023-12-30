extends Node
class_name 战斗系统


@onready var _消息系统 = Global._消息系统 as 消息系统
var _角色_dict: Dictionary
var _角色_arr: Array[角色]

func _ready() -> void:
	# 节点准备好后在全局登记
	Global._战斗系统 = self
	# 引用 _角色_dict
	_角色_dict = Global._角色_dict
	# 引用 _角色_arr 
	_角色_arr = Global._角色_arr
	pass

signal 角色计算先攻
signal 角色排序改变
signal 角色解析命令

var _战斗结束: bool = false

var _轮次阶段: Global.轮次阶段: set = _set_轮次阶段
func _set_轮次阶段(new_轮次阶段) -> void:
	_轮次阶段 = new_轮次阶段
	match _轮次阶段:
		Global.轮次阶段.先攻排序:
			_消息系统.emit_signal("信号_发送消息", Global.消息类型.战斗, "轮次阶段:先攻排序")
			emit_signal("角色计算先攻")# 发给角色
			# 排序
			_角色排序_先攻()
			emit_signal("角色排序改变")# 发给ui
		Global.轮次阶段.先攻排序_结束:
			_消息系统.emit_signal("信号_发送消息", Global.消息类型.战斗, "轮次阶段:先攻排序_结束")
			pass
		Global.轮次阶段.角色决策:
			_消息系统.emit_signal("信号_发送消息", Global.消息类型.战斗, "轮次阶段:角色决策")
			pass
		Global.轮次阶段.角色决策_结束:
			_消息系统.emit_signal("信号_发送消息", Global.消息类型.战斗, "轮次阶段:角色决策_结束")
			emit_signal("角色解析命令")# 发给角色
			pass
		Global.轮次阶段.角色行动:
			_消息系统.emit_signal("信号_发送消息", Global.消息类型.战斗, "轮次阶段:角色行动")
			for i in _角色_arr:
				#_消息系统.emit_signal("信号_发送消息", Global.消息类型.战斗, i.命令)
				角色行动结算(i)
			pass
		Global.轮次阶段.角色行动_结束:
			_消息系统.emit_signal("信号_发送消息", Global.消息类型.战斗, "轮次阶段:角色行动_结束")
			pass
	pass

func 先攻排序() -> void:
	_轮次阶段 = Global.轮次阶段.先攻排序
	_轮次阶段 = Global.轮次阶段.先攻排序_结束
	pass
	
func 角色决策() -> void:
	_轮次阶段 = Global.轮次阶段.角色决策
	pass

func 角色决策结束() -> void:
	_轮次阶段 = Global.轮次阶段.角色决策_结束
	pass
	
func 角色行动() -> void:
	_轮次阶段 = Global.轮次阶段.角色行动
	_轮次阶段 = Global.轮次阶段.角色行动_结束
	pass

func 角色行动结算(当前角色: 角色) -> void:
	print(当前角色.命令_dict)
	pass

func _角色排序_先攻() -> void:
	# 冒泡 简单粗暴
	for i in _角色_arr.size() - 1:
		for j in  _角色_arr.size() - 1:
			if _角色_arr[j].先攻 < _角色_arr[j + 1].先攻:
				var temp = _角色_arr[j + 1]
				_角色_arr[j + 1] = _角色_arr[j]
				_角色_arr[j] = temp
			elif _角色_arr[j].先攻 == _角色_arr[j + 1].先攻:
				if 骰子.d20_两者比较():
					var temp = _角色_arr[j + 1]
					_角色_arr[j + 1] = _角色_arr[j]
					_角色_arr[j] = temp
	pass
