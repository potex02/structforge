class_name RightContainer
extends Container
## The right container of the app.


## The app sections.
enum Section { NULL, MODEL, INSTANCE }


## The node of the model section.
const MODEL_NODE: PackedScene = preload("res://nodes/model_container.tscn")


## Chnages current app section.
func change_section(section: Section) -> void:
	if self.get_child_count() > 0:
		self.remove_child(self.get_child(0))
	if section == Section.MODEL:
		self.add_child(RightContainer.MODEL_NODE.instantiate())
