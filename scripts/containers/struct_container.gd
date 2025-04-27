class_name  StructContainer
extends VBoxContainer
## The app struct section.


## The field container node.
const FIELD_CONTAINER_NODE: PackedScene = preload("res://nodes/field_container.tscn")
## The struct tree item.
var item: TreeItem


## Adds a field to the struct.
func _on_field_button_pressed() -> void:
	
	var fields_container: VBoxContainer = $ScrollContainer/FieldsContainer
	var container: FieldContainer = StructContainer.FIELD_CONTAINER_NODE.instantiate()
	
	container.set_content(fields_container.remove_child, Field.new("New field", TYPE_INT, false))
	fields_container.add_child(container)


## Saves the struct.
func _on_save_button_pressed() -> void:
	Model.model.save_struct(self.item.get_metadata(0).id, Struct.new(self.item.get_text(0), []))
