extends Area2D
class_name Interactable

@export var action_name: String = "interact"

var interact : Callable = func():
	pass

func _on_body_entered(body: Node2D) -> void:
	InteractableManager.register_area(self)


func _on_body_exited(body: Node2D) -> void:
	InteractableManager.unregister_area(self)
