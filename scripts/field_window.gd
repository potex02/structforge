class_name FieldWindow
extends Window
## The class representing the windows used to create a field.


## The field name text edit.
@onready var _field_name: TextEdit = $VBoxContainer/NameContainer/TextEdit
## The field type option.
@onready var _field_type: OptionButton = $VBoxContainer/TypeContainer/OptionButton
## The signal emitted when a field is created.
signal field_created(name: String, type: int, field_class: String)


## Connects the add button to its action.
func _on_add_button_pressed() -> void:
	self.field_created.emit(self._field_name.text, self._field_type.selected, "")
