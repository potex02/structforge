class_name Field
extends RefCounted
## A class respresenting a model field.


## The field name.
var _name: String
## The field type.
var _type: int
## The name of the field class.
var _field_class: String


func _init(name: String, type: int, field_class: String) -> void:
	self._name = name
	self._type = type
	self._field_class = field_class


func _to_string() -> String:
	return "%s (%s %s)" % [self._name, self._type, self._field_class]
