extends Node2D
class_name SlotTile

var size :Vector2
var tileName

func _ready():
  pass

func set_icon(tex):
	if (tex =="A"):
		$Node2D.add_child($A)
	elif(tex =="bunny"):
		$Node2D.add_child($Bunny)
	elif(tex =="clown"):
		$Node2D.add_child($Clown)
	elif(tex =="elephant"):
		$Node2D.add_child($Elephant)
	elif(tex =="J"):
		$Node2D.add_child($J)
	elif(tex =="K"):
		$Node2D.add_child($K)
	elif(tex =="Lion"):
		$Node2D.add_child($Lion)
	elif(tex =="Malabare"):
		$Node2D.add_child($Juggle)
	elif(tex =="Strongman"):
		$Node2D.add_child($Strongman)
	elif(tex =="Q"):
		$Node2D.add_child($Q)
	elif(tex =="A"):
		$Node2D.add_child($A)
	set_size(size)

func set_name(nam):
	tileName = nam

func set_size(new_size: Vector2):
  size = new_size
#  $Node2D.scale = size / $Node2D.get_size()
  
func set_speed(speed):
  $Tween.playback_speed = speed
  
func move_to(to: Vector2):   
  $Tween.interpolate_property(self, "position",
	position, to, 1, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
  $Tween.start()

func move_by(by: Vector2):
  move_to(position + by)
  
func spin_up():
  $Animations.play('SPIN_UP')
  
func spin_down():
  $Animations.play('SPIN_DOWN')
  
