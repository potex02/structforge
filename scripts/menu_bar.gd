class_name MainMenuBar
extends MenuBar
## The menu bar ot the app.


## The file pop menu. 
@onready var _file: PopupMenu = $File


## Connects the menubar items to the actions. 
func connect_actions() -> void:
	var event: InputEventKey = InputEventKey.new()
	event.key_label = KEY_O
	event.command_or_control_autoremap = true
	var open_action: Shortcut = Shortcut.new()
	self._file.set_item_shortcut(0, open_action)
	self._file.index_pressed.connect(func(index: int): print(index))
