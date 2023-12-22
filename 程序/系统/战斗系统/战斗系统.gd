extends Node
class_name 战斗系统


var _角色_dict: Dictionary
var _角色_arr: Array[角色]

signal 角色计算先攻
signal 角色排序改变

func _ready() -> void:
	# 节点准备好后在全局登记
	Global._战斗系统 = self
	# 引用 _角色_dict
	_角色_dict = Global._角色_dict
	# 引用 _角色_arr 
	_角色_arr = Global._角色_arr
	pass

func 进行一轮次() -> void:
	emit_signal("角色计算先攻")
	_角色排序_先攻()
	emit_signal("角色排序改变")
	pass

func _角色排序_先攻() -> void:
	_角色_arr.sort_custom(sort_custom_先攻)
	# 插入排序
	#for i in _角色_arr.size() - 1:
		##print(i)
		## 当前角色
		#var 当前角色: 角色 = _角色_arr[i + 1]
			## 上一个数的指针
		#var 上一个数的指针: int = i
		## 在数组中找到一个比当前遍历的数小的第一个数
		#while 上一个数的指针 >= 0:
			#if 当前角色.先攻 > _角色_arr[上一个数的指针].先攻:
				## 把比当前遍历的数大的数字往后移动
				#_角色_arr[上一个数的指针 + 1] = _角色_arr[上一个数的指针]
			## 如果先攻值相同 重新d20
			#elif 当前角色.先攻 == _角色_arr[上一个数的指针].先攻:
				#if 骰子.d20_两者比较():
					## 把比当前遍历的数大的数字往后移动
					#_角色_arr[上一个数的指针 + 1] = _角色_arr[上一个数的指针]
			## 需要插入的数的下标往前移动
			#上一个数的指针 = 上一个数的指针 - 1
		## 插入当前角色
		#_角色_arr[上一个数的指针 + 1] = 当前角色
	pass

func sort_custom_先攻(角色a: 角色, 角色b: 角色) -> bool:
	if 角色a.先攻 > 角色b.先攻:
		return true
	elif 角色a.先攻 == 角色b.先攻:
		return 骰子.d20_两者比较()
	else :
		return false
	pass
