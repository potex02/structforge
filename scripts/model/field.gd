class_name Field
extends RefCounted
## A class respresenting a model field.


## The dicitonary of the primitive types names.
const PRIMITIVE_TYPES: Dictionary[int, String] = {
	TYPE_INT: "Int",
	TYPE_FLOAT: "Float",
	TYPE_BOOL: "Bool",
	TYPE_STRING: "String",
}
## The field name.
var name: String
## The field type.
var type: int
## The flag indicating if the field is required.
var required: bool


func _init(name: String, type: int, required: bool) -> void:
	self.name = name
	self.type = type
	self.required = required
