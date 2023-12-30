extends TextureButton


signal 生成命令(new_命令: String) 

@onready var _行为列表 = $"../../.." as 行为列表
var _战斗系统: 战斗系统
var 从属角色: 角色

func _ready() -> void:
	_战斗系统 = Global._战斗系统 as 战斗系统
	从属角色 = _行为列表._角色 as 角色
	生成命令.connect(_行为列表._角色.触发_生成命令)
	pass

var _行为数据: 行为数据: set = _set_行为数据
func _set_行为数据(new_行为数据: 行为数据) -> void:
	_行为数据 = new_行为数据
	texture_normal = _行为数据._行为_texture
	pass

#var 接收位置: bool = false

func _触发_行为() -> void:
	if _战斗系统._轮次阶段 == Global.轮次阶段.角色决策:
		disabled = true
		#print("disabled",disabled)
	pass

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("鼠标左键"):
		if disabled:
			var temp: Vector2 = ((get_global_mouse_position() - Global.游戏世界坐标栏长宽_const) / Global.游戏世界网格边长_const + Vector2(1,1))
			var 鼠标所在网格位置: Vector2i
			鼠标所在网格位置.x = int(temp.x)
			鼠标所在网格位置.y = int(temp.y)
			emit_signal("生成命令", "普攻:" + str(鼠标所在网格位置.x) + "," + str(鼠标所在网格位置.y) + "," + ";")
	if event.is_action_released("鼠标左键"):
		if disabled:
			disabled = false
			#print("disabled",disabled)
	pass

