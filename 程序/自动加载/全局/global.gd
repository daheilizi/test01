extends Node


# 消息类型枚举
enum 消息类型 {
	系统提示,
	战斗,
}

# 消息系统 记名到全局
@warning_ignore("unused_private_class_variable")
var _消息系统: 消息系统
# 战斗系统 记名到全局
@warning_ignore("unused_private_class_variable")
var _战斗系统: 战斗系统
@warning_ignore("unused_private_class_variable")
var _角色_dict: Dictionary = {}

# 职业枚举
enum 职业名称 {
	冒险家,
	战士,
	法师,
	牧师,
	游侠,
	刺客,
	狂战士,
	武僧,
}

# 角色行为名称
enum 行为名称 {
	位移_上,
	位移_下,
	位移_左,
	位移_右,
	攻击_普攻,
	# 职业特质 冒险家
	职业特质_冒险家_冒险家的准备,
	# 角色特质
	角色特质_戈多,
	角色特质_和真的幸运
}

# 角色行为类型
enum 行为类型 {
	基本位移,
	基本攻击,
	职业技能,
	职业特质,
	角色特质,
}

# 物品名称
enum 物品名称 {
	# 武器
	回旋镖,
	弓箭,
	战斧,
	拳头,
	法杖,
	长剑,
	# 道具
	修理粉尘,
	烤肉,
	红血瓶,
}

# 栏位类型
enum 栏位类型 {
	通用,
	武器,
}

# 物品类型
enum 物品类型 {
	武器,
	道具,
}
