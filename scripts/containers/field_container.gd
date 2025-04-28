class_name FieldContainer
extends HBoxContainer
## The container of a field for the struct definition.


## Sets the field data in the container.
func set_content(remove_callable: Callable, field: Field) -> void:
	
	var type_option: OptionButton = $Type
	
	$Name.text = field.name
	for i in Field.PRIMITIVE_TYPES:
		type_option.add_item(Field.PRIMITIVE_TYPES[i], i)
	type_option.select(type_option.get_item_index(field.type))
	$Required.button_pressed = field.required
	$RemoveButton.pressed.connect(remove_callable.bind(self))


## Gets the field from the container.
func get_field() -> Field:
	return Field.new($Name.text.to_lower(), $Type.get_item_id($Type.selected), $Required.button_pressed)
