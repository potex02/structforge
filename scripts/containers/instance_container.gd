class_name  InstanceContainer
extends VBoxContainer
## The app instance section.


## The struct tree item.
var item: TreeItem
## The instance type.
var struct_id: int


## Creates the values fields.
func _ready() -> void:
	
	var struct: Struct = Model.model.get_struct(self.struct_id)
	
	if not struct:
		return
	struct.get_values_containers().map(func(i: ValueContainer) -> void: $ScrollContainer/FieldsContainer.add_child(i))


## Saves the instance.
func _on_save_button_pressed() -> void:
	Model.model.save_instance(self.item.get_metadata(0).id, Instance.new())
