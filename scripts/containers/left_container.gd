class_name LeftContainer
extends VBoxContainer
## The left container of the app.


## The tree of models and instances.
@onready var _tree: Tree = $ModelTree
## The tree root item.
var _root: TreeItem


## Connects the button signal to the action.
func _ready() -> void:
	self._root = self._tree.create_item()
	self._tree.hide_root = true
	#$ModelButton.pressed.connect(func():
		#
		#var model_item: TreeItem = self._tree.create_item(self._root)
		#
		#model_item.set_text(0, "New model")
		#model_item.set_editable(0, true)
		#model_item.add_button(1, load("res://icon.svg"))
	#)
