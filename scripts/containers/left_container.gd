class_name LeftContainer
extends VBoxContainer
## The left container of the app.


## The tree of structs and instances.
@onready var _tree: Tree = $StructTree
## The tree root item.
var _root: TreeItem
## The signal emitted when a tree element is clicked.
signal element_clicked(element: Variant)


## Connects the button signal to the action.
func _ready() -> void:
	self._tree.button_clicked.connect(func(item: TreeItem, column: int, id: int, mouse_button_index: int):
		if mouse_button_index != 1:
			return
		match id:
			0:
				self.element_clicked.emit(item.get_metadata(0))
			1:
				if item.get_metadata(0).container is Node:
					item.get_metadata(0).container.queue_free()
				item.free()
	)
	self._root = self._tree.create_item()
	self._tree.hide_root = true
	$StructButton.pressed.connect(func():
		
		var struct_item: TreeItem = self._tree.create_item(self._root)
		var struct_container: StructContainer = preload("res://nodes/struct_container.tscn").instantiate()
		
		struct_item.set_text(0, "New struct")
		struct_item.set_editable(0, true)
		struct_item.add_button(0, preload("res://assets/edit.svg"), 0, false, "Edit the struct")
		struct_container.item = struct_item
		struct_item.set_metadata(0, {
			id = Model.model.next_struct_id(),
			container = struct_container
		})
		struct_item.add_button(0, preload("res://assets/remove.svg"), 1, false, "Remove the struct")
	)
