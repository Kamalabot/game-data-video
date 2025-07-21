extends Node3D
# @export var item_id:String = "pickaxe"
@export var item: Item

func _ready() -> void:
	# Items class is visible to everybody
#	var scene = load(Items.Database[item_id].scene)
	var insta = item.scene.instantiate()
	add_child(insta)

func _on_area_3d_body_entered(body: Node3D) -> void:
	# print("It works..")
	# we are setting up the contract to pickup the body
	if body.has_method("on_item_picked_up"):
		body.on_item_picked_up(item)
		queue_free()
