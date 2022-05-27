extends Node2D

onready var slot = $ViewportContainer/Viewport/SlotMachine
onready var lightAnim = $Luzes/AnimationPlayer
var rolled = false

func _ready():
	slot.connect("stopped", self, "_on_slot_machine_stopped")
	lightAnim.play("luz")

func _on_Roll2_button_down():
	if rolled == false:
		slot.start()
		rolled = true
	else:
		slot.stop()
		

func _on_slot_machine_stopped():
	rolled = false


func _on_options_button_down():
	pass # Replace with function body.
