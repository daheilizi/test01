extends TextureButton


signal 生成命令(new_命令: String) 

@onready var _行为列表 = $"../../.." as 行为列表
var _战斗系统: 战斗系统

func _ready() -> void:
	_战斗系统 = Global._战斗系统 as 战斗系统
	生成命令.connect(_行为列表._角色.触发_生成命令)
	pass

var _行为数据: 行为数据: set = _set_行为数据
func _set_行为数据(new_行为数据: 行为数据) -> void:
	_行为数据 = new_行为数据
	texture_normal = _行为数据._行为_texture
	pass

func _触发_行为() -> void:
	if _战斗系统._轮次阶段 == Global.轮次阶段.角色决策:
		emit_signal("生成命令", "左移:;")
	pass
