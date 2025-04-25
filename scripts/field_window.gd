class_name FieldWindow
extends Window
## The class representing the windows used to create a field.


## The field name text edit.
@onready var _field_name: TextEdit = $VBoxContainer/NameContainer/TextEdit
## The field type option.
@onready var _field_type: OptionButton = $VBoxContainer/TypeContainer/OptionButton
## The requried check box.
@onready var _field_required: CheckBox = $VBoxContainer/RequiredContainer/CheckBox
## The add button.
@onready var _add_button: Button = $VBoxContainer/AddButton
## The signal emitted when a field is created.
signal field_created(field: Field)


## Connect the fields signals to the button
func _ready() -> void:
	self._field_name.text_changed.connect(self._enable_button)
	self._field_type.item_selected.connect(self._enable_button)
	self._enable_button()


## Connects the add button to its action.
func _on_add_button_pressed() -> void:
	self.field_created.emit(Field.new(self._field_name.text, self._field_type.selected,
			self._field_required.button_pressed))
	self.close_requested.emit()


## Sets the button enable state.
func _enable_button(index: int = self._field_type.selected) -> void:
	self._add_button.disabled = self._field_name.text.is_empty() or index == -1


## Handles the window close request.
func _on_close_requested() -> void:
	self._field_name.clear()
	self._field_type.select(-1)
	self._field_required.button_pressed = false
	self._enable_button()
	self.hide()
