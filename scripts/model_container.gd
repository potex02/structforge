class_name  ModelContainer
extends VBoxContainer
## The app model section.


## The windows used to create a field.
@onready var _field_window:FieldWindow = $FieldWindow


## The array of the fields.
var _fields: Array[Field]


## Connects the field_created signal.
func _ready() -> void:
	self._field_window.field_created.connect(func(name: String, type: int, field_class: String):
		self._fields.append(Field.new(name, type, field_class))
		print(_fields)
	)


## Adds a field to the model.
func _on_field_button_pressed() -> void:
	$FieldWindow.show()
