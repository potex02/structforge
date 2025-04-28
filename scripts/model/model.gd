class_name Model
extends RefCounted
## The app model.


## The app model singleton.
static var model: Model = Model.new()
## the id assigned to the structs.
var _struct_id: int = 0
## The saved structs.
var _structs: Dictionary[int, Struct]


## Saves a struct.
func save_struct(name: int, struct: Struct) -> void:
	self._structs[name] = struct


## Gets the mext struct id.
func next_struct_id() -> int:
	self._struct_id += 1
	return self._struct_id - 1
