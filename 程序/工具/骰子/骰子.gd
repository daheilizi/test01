extends Node
class_name 骰子


static func d20() -> int:
	return randi_range(1,20)
	pass

# 为真则第一个数大
static func d20_两者比较() -> bool:
	var a = d20()
	var b = d20()
	if a > b:
		return true
	elif a == b:
		return d20_两者比较()
	else :
		return false
