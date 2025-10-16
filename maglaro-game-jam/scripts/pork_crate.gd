extends Node2D

@onready var interactable: Interactable = $Interactable
@onready var player = get_tree().get_first_node_in_group("player")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	interactable.interact = Callable(self, "on_interact")


func on_interact():
	# Give the player a raw pork
	print("Raw pork collected")
