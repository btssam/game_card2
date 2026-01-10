class_name IntentUI
extends HBoxContainer

@onready var icon = $Icon
@onready var number = $Number



func update_intent(intent: Intent) -> void:
	if not intent:
		hide()
		return
	
	icon.texture= intent.icon
	icon.visible = icon.texture != null
	number.text= str(intent.number)
	number.visible = intent.number.length() > 0
	show()
