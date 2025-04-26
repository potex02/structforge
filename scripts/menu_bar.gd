class_name MainMenuBar
extends MenuBar
## The menu bar ot the app.


## Connects the menubar items to the actions. 
func connect_actions() -> void:
	
	var file: PopupMenu = $File
	var event: InputEventKey = InputEventKey.new()
	var open_action: Shortcut = Shortcut.new()
	
	event.key_label = KEY_O
	event.command_or_control_autoremap = true
	file.set_item_shortcut(0, open_action)
	file.index_pressed.connect(func(index: int): print(index))
