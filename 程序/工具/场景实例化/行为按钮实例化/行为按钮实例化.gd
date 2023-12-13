extends Node
class_name 行为按钮实例化

const 行为按钮_位移_上_SCENE = preload("res://程序/行为/UI/行为按钮/行为按钮_基本/行为按钮_位移_上/行为按钮_位移_上.tscn")
const 行为按钮_位移_下_SCENE = preload("res://程序/行为/UI/行为按钮/行为按钮_基本/行为按钮_位移_下/行为按钮_位移_下.tscn")
const 行为按钮_位移_左_SCENE = preload("res://程序/行为/UI/行为按钮/行为按钮_基本/行为按钮_位移_左/行为按钮_位移_左.tscn")
const 行为按钮_位移_右_SCENE = preload("res://程序/行为/UI/行为按钮/行为按钮_基本/行为按钮_位移_右/行为按钮_位移_右.tscn")
const 行为按钮_攻击_普攻_SCENE = preload("res://程序/行为/UI/行为按钮/行为按钮_基本/行为按钮_攻击_普攻/行为按钮_攻击_普攻.tscn")

static func get_实例(行为名称: Global.行为名称):
	match 行为名称:
		Global.行为名称.位移_上:
			return 行为按钮_位移_上_SCENE.instantiate()
		Global.行为名称.位移_下:
			return 行为按钮_位移_下_SCENE.instantiate()
		Global.行为名称.位移_左:
			return 行为按钮_位移_左_SCENE.instantiate()
		Global.行为名称.位移_右:
			return 行为按钮_位移_右_SCENE.instantiate()
		Global.行为名称.攻击_普攻:
			return 行为按钮_攻击_普攻_SCENE.instantiate()
	pass
	
	
