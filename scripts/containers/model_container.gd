class_name  ModelContainer
extends VBoxContainer
## The app model section.


## The field container node.
const FIELD_CONTAINER_NODE: PackedScene = preload("res://nodes/model/field_container.tscn")
## The container of the fields.
@onready var _fields_container: VBoxContainer = $FieldsContainer
## The windows used to create a field.
@onready var _field_window: FieldWindow = $FieldWindow


## Connects the field_created signal.
func _ready() -> void:
	self._field_window.field_created.connect(self._add_field)


## Adds a field the gui.
func _add_field(field: Field) -> void:
	
	var container: FieldContainer = ModelContainer.FIELD_CONTAINER_NODE.instantiate()
	
	container.set_content(field)
	self._fields_container.add_child(container)


## Adds a field to the model.
func _on_field_button_pressed() -> void:
	$FieldWindow.show()
