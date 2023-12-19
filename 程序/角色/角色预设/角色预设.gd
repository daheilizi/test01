extends Resource
class_name 角色预设

@export_group("基本数据")
@export var char_名字: String
@export var char_职业: 职业数据
@export var char_形象: Texture2D
@export var char_头像: Texture2D
@export var 血量: int
@export var 血量_max: int
@export var 能量: int
@export var 能量_max: int
@export var 护甲: int
@export var 护甲_max: int
@export_group("行为集")
@export var char_行为集: Array[行为数据]
@export_group("库存数据")
@export var _库存数据: 库存数据

