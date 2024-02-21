extends Node

var day = 1
var step = 0
var choice = ""
var touch = false
var actions_list : Array = []

func _actions_list(option, value, newValue = ""):
	if option == "get":
		return actions_list.find(value) != -1

	elif option == "post":
		actions_list.append(value)
		return true

	elif option == "put":
		var index = actions_list.find(value)
		if index != -1:
			actions_list[index] = newValue
			return true
		return false

	elif option == "delete":
		var index = actions_list.find(value)
		if index != -1:
			actions_list.remove_at(index)
			return true
		return false

	return false

func _step_once():
	touch = false
	if step >= 0: step = step * -1
	else: print("_once: valor negativo")

func _next_step():
	if step < 0: step = (step * -1) + 1
	else: step += 1
