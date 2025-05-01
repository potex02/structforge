class_name Struct
extends RefCounted
## A class respresenting a struct.


## The struct name.
var _name: String
## The struct fields.
var _fields: Array[Field]


## Creates a struct.
func _init(name: String, fields: Array[Field]) -> void:
	self._name = name
	self._fields = fields


## Gets the containers for the struct values.
func get_values_containers() -> Array[ValueContainer]:
	
	var result: Array[ValueContainer]
	
	for i in self._fields:
		result.append(i.get_value_container())
	return result
