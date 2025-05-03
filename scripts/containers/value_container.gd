class_name ValueContainer
extends HBoxContainer
## The container of a value of an instance.


## The value container nodes.
const VALUE_CONTAINER_NODES: Dictionary[int, PackedScene] = {
	TYPE_MAX: null,
	TYPE_NIL: preload("res://nodes/values/null_container.tscn"),
	TYPE_INT: preload("res://nodes/values/int_container.tscn"),
	TYPE_FLOAT: preload("res://nodes/values/float_container.tscn"),
	TYPE_BOOL: preload("res://nodes/values/bool_container.tscn"),
	TYPE_STRING: preload("res://nodes/values/string_container.tscn"),
	TYPE_ARRAY: null,
	TYPE_DICTIONARY: null
}


## Creates a [ValueContainer] from a field.
static func create(field: Field) -> ValueContainer:
	
	var container: ValueContainer = ValueContainer.VALUE_CONTAINER_NODES[field.type].instantiate()
	
	container.get_node(^"Name").text = field.name
	return container
