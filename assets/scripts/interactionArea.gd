extends Area2D
class_name interactionArea

@export var action_name: String = 'interact'

var interact: Callable = func():
	pass


func _on_body_entered(_body):
	interactionManager.register_area(self)


func _on_body_exited(_body):
	interactionManager.unregister_area(self)
