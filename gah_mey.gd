extends Node2D
@onready var label = $"the whens real/Label"
@onready var upcostlab = $"the whens real/upcostshowitthecostsowme"

func _on_ben_johnson_pressed() -> void:
	globals.whens += globals.whup
	saywhen()

func saywhen():
	label.text = str(globals.whens)
	upcostlab.text = str(globals.upcost)
	

func _on_button_pressed() -> void:
	if globals.whens >= globals.upcost:
		globals.whens -= globals.upcost
		globals.whup += 1
		globals.upcost = round(globals.upcost * 1.25)
		saywhen()
