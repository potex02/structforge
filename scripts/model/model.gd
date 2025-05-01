class_name Model
extends RefCounted
## The app model.


## The app model singleton.
static var model: Model = Model.new()
## the id assigned to the structs.
var _struct_id: int = 0
## the id assigned to the instances.
var _instance_id: int = 0
## The saved structs.
var _structs: Dictionary[int, Struct]
## The saved instances.
var _instances: Dictionary[int, Instance]


## Gets a struct.
func get_struct(id: int) -> Struct:
	return self._structs.get(id, null)


## Saves a struct.
func save_struct(id: int, struct: Struct) -> void:
	self._structs[id] = struct


## Saves an instance.
func save_instance(id: int, instance: Instance) -> void:
	self._instances[id] = instance


## Gets the mext struct id.
func next_struct_id() -> int:
	self._struct_id += 1
	return self._struct_id - 1


## Gets the mext instance id.
func next_instance_id() -> int:
	self._instance_id += 1
	return self._instance_id - 1
