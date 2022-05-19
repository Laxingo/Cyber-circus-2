extends Node2D
class_name SlotTile

var size :Vector2
var tileName

func _ready():
  pass

func set_icon(tex):
	if (tex =="A"):
		$A.visible = true
		$Bunny.visible= false
		$Clown.visible = false
		$Elephant.visible= false
		$J.visible= false
		$K.visible= false
		$Lion.visible= false
		$Juggle.visible= false
		$Strongman.visible= false
		$Q.visible= false
	elif(tex =="bunny"):
		$A.visible = false
		$Bunny.visible= true
		$Clown.visible = false
		$Elephant.visible= false
		$J.visible= false
		$K.visible= false
		$Lion.visible= false
		$Juggle.visible= false
		$Strongman.visible= false
		$Q.visible= false
	elif(tex =="clown"):
		$A.visible = false
		$Bunny.visible= false
		$Clown.visible = true
		$Elephant.visible= false
		$J.visible= false
		$K.visible= false
		$Lion.visible= false
		$Juggle.visible= false
		$Strongman.visible= false
		$Q.visible= false
	elif(tex =="elephant"):
		$A.visible = false
		$Bunny.visible= false
		$Clown.visible = false
		$Elephant.visible= true
		$J.visible= false
		$K.visible= false
		$Lion.visible= false
		$Juggle.visible= false
		$Strongman.visible= false
		$Q.visible= false
	elif(tex =="J"):
		$A.visible = false
		$Bunny.visible= false
		$Clown.visible = false
		$Elephant.visible= false
		$J.visible= true
		$K.visible= false
		$Lion.visible= false
		$Juggle.visible= false
		$Strongman.visible= false
		$Q.visible= false
	elif(tex =="K"):
		$A.visible = false
		$Bunny.visible= false
		$Clown.visible = false
		$Elephant.visible= false
		$J.visible= false
		$K.visible= true
		$Lion.visible= false
		$Juggle.visible= false
		$Strongman.visible= false
		$Q.visible= false
	elif(tex =="Lion"):
		$A.visible = false
		$Bunny.visible= false
		$Clown.visible = false
		$Elephant.visible= false
		$J.visible= false
		$K.visible= false
		$Lion.visible= true
		$Juggle.visible= false
		$Strongman.visible= false
		$Q.visible= false
	elif(tex =="Malabare"):
		$A.visible = false
		$Bunny.visible= false
		$Clown.visible = false
		$Elephant.visible= false
		$J.visible= false
		$K.visible= false
		$Lion.visible= false
		$Juggle.visible= true
		$Strongman.visible= false
		$Q.visible= false
	elif(tex =="Strongman"):
		$A.visible = false
		$Bunny.visible= false
		$Clown.visible = false
		$Elephant.visible= false
		$J.visible= false
		$K.visible= false
		$Lion.visible= false
		$Juggle.visible= false
		$Strongman.visible= true
		$Q.visible= false
	elif(tex =="Q"):
		$A.visible = false
		$Bunny.visible= false
		$Clown.visible = false
		$Elephant.visible= false
		$J.visible= false
		$K.visible= false
		$Lion.visible= false
		$Juggle.visible= false
		$Strongman.visible= false
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
  
