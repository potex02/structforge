class_name RightContainer
extends Container
## The right container of the app.


## The app sections.
enum Section { NULL, MODEL, INSTANCE }


## Sets the current content.
func set_content(content: Container) -> void:
	if self.get_child_count() > 0:
		self.remove_child(self.get_child(0))
	self.add_child(content)
