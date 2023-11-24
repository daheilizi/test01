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
}

# 角色行为类型
enum 行为类型 {
	基本位移,
	基本攻击,
	职业技能,
}
