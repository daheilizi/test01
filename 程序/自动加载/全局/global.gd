extends Node


# 类型枚举
enum 消息类型 {
	系统提示,
	战斗
}

# 消息系统 记名到全局
@warning_ignore("unused_private_class_variable")
var _消息系统: 消息系统
# 战斗系统 记名到全局
@warning_ignore("unused_private_class_variable")
var _战斗系统: 战斗系统
