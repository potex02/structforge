class_name Main
extends Control
## The app root component.

## The app menu bar.
@onready var _main_menu_bar: MainMenuBar = $MainContainer/MainMenuBar
## The app left container.
@onready var _left_container: LeftContainer = $MainContainer/ScrollContainer/HSplitContainer/LeftContainer
## The app right container.
@onready var _right_container: RightContainer = $MainContainer/ScrollContainer/HSplitContainer/RightContainer

## Initializes the app.
func _ready() -> void:
	self.get_window().min_size = Vector2i(400, 400)
	self._main_menu_bar.connect_actions()
	self._left_container.get_node(^"ModelButton").pressed.connect(self._right_container.change_section.bind(RightContainer.Section.MODEL))
