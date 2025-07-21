extends PanelContainer

@onready var _texture_rect:TextureRect = %TextureRect

func display(item:Item):
	# We are accessing texture attr and assigning icon
	_texture_rect.texture = item.icon
	
