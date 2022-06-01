extends Node2D

onready var slot = $ViewportContainer/Viewport/SlotMachine
onready var lightAnim = $Luzes/AnimationPlayer
var rolled = false

var popedup = false
var popedup2 = false

onready var carpet1 = preload("res://sound/music/Cyber Circus Carpet Asharp.mp3")
onready var carpet2 = preload("res://sound/music/Cyber Circus Carpet Dsharp.mp3")

var carpet1played = false

func _ready():
	slot.connect("stopped", self, "_on_slot_machine_stopped")
	lightAnim.play("luz")

func _process(delta: float) -> void:
	if !carpet1played:
		$AudioStreamPlayer2D.stream = carpet1
		if !$AudioStreamPlayer2D.is_playing():
			$AudioStreamPlayer2D.play()
			carpet1played = true
			print("Carpet1 Playing")
	else:
		$AudioStreamPlayer2D.stream = carpet2
		if !$AudioStreamPlayer2D.is_playing():
			$AudioStreamPlayer2D.play()
			carpet1played = false
			print("Carpet2 Playing")
	

func _on_Roll2_button_down():
	if rolled == false:
		slot.start()
		rolled = true
	else:
		slot.stop()
		

func _on_slot_machine_stopped():
	rolled = false


func _on_options_button_down():
	if popedup== false:
		$options/AnimationPlayer.play("popup1o")
		if popedup2 == true:
			$options/AnimationPlayer.play("popup2c")
			popedup2 = false
			popedup = false
		else:
			popedup = true
			popedup2 = false
	elif popedup == true:
		$options/AnimationPlayer.play("popup1c")
		popedup = false
		popedup2 = false

func _on_replay_button_down():
	if popedup2== false:
		$options/AnimationPlayer.play("popup2o")
		if popedup == true:
			$options/AnimationPlayer.play("popup1c")
			popedup2 = false
			popedup = false
		else:
			popedup2 = true
			popedup = false
	elif popedup2 == true:
		$options/AnimationPlayer.play("popup2c")
		popedup2 = false
		popedup = false
