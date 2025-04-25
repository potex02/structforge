class_name FieldContainer
extends HBoxContainer
## The container of a field for the model definition.


## Sets the field data in the container.
func set_content(field: Field) -> void:
	$Name.text = field.name
	$Type.text = str(field.type)
	$Required.button_pressed = field.required
