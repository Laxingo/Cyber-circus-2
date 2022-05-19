extends Node2D
class_name SlotTile

var size :Vector2
var tileName

func _ready():
  pass

func set_icon(tex):
	if (tex =="A"):
		get_node("A").visible = true
		print("AAAAAAAAAAAAA")
#		$A.visible
	elif(tex =="bunny"):
		$Bunny.visible= true
	elif(tex =="clown"):
		$Clown.visible
	elif(tex =="elephant"):
		$Elephant.visible= true
	elif(tex =="J"):
		$J.visible= true
	elif(tex =="K"):
		$K.visible
	elif(tex =="Lion"):
		$Lion.visible= true
	elif(tex =="Malabare"):
		$Juggle.visible= true
	elif(tex =="Strongman"):
		$Strongman.visible= true
	elif(tex =="Q"):
		$Q.visible= true
	set_size(size)

func set_name(nam):
	tileName = nam

func set_size(new_size: Vector2):
  size = new_size
  
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
  
