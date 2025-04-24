extends Control

@onready var _main_menu_bar: MainMenuBar = $MainContainer/MainMenuBar
@onready var _tree: Tree = $MainContainer/ScrollContainer/HSplitContainer/LeftContainer/ModelTree

func _ready() -> void:
	self.get_window().min_size = Vector2i(400, 400)
	self._main_menu_bar.connect_actions()
	var root: TreeItem = self._tree.create_item()
	self._tree.hide_root = true
	#for i in ["A", "B", "C"]:
		#self._tree.create_item(root).set_text(0, i)
