class_name Field
extends RefCounted
## A class respresenting a model field.


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
