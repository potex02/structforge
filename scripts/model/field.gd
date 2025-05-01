class_name Field
extends RefCounted
## A class respresenting a struct field.


## The value container node.
const VALUE_CONTAINER_NODE: PackedScene = preload("res://nodes/value_container.tscn")
## The dicitonary of the primitive types names.
const PRIMITIVE_TYPES: Dictionary[int, String] = {
	TYPE_MAX: "Variant",
	TYPE_NIL: "Null",
	TYPE_INT: "Int",
	TYPE_FLOAT: "Float",
	TYPE_BOOL: "Bool",
	TYPE_STRING: "String",
	TYPE_ARRAY: "Array",
	TYPE_DICTIONARY: "Dictionary"
}
## The field name.
var name: String
## The field type.
var type: int
## The flag indicating if the field is required.
var required: bool


## Creates a [Field].
func _init(name: String, type: int, required: bool) -> void:
	self.name = name
	self.type = type
	self.required = required


## Creates a container for edit the field.
func get_value_container() -> ValueContainer:
	
	var container: ValueContainer = Field.VALUE_CONTAINER_NODE.instantiate()
	
	return container
