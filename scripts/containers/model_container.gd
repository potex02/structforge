class_name  ModelContainer
extends VBoxContainer
## The app model section.


## The field container node.
const FIELD_CONTAINER_NODE: PackedScene = preload("res://nodes/model/field_container.tscn")


## Adds a field to the model.
func _on_field_button_pressed() -> void:
	
	var fields_container: VBoxContainer = $FieldsContainer
	var container: FieldContainer = ModelContainer.FIELD_CONTAINER_NODE.instantiate()
	
	container.set_content(fields_container.remove_child, Field.new("New field", TYPE_INT, false))
	fields_container.add_child(container)
