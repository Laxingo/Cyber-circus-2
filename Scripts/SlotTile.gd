extends Node2D
class_name SlotTile

var size :Vector2
var tileName

func _ready():
  pass

func set_icon(tex):
	if (tex =="A"):
		$Sprite/A.visible = true
		$Sprite/Bunny.visible= false
		$Sprite/Clown.visible = false
		$Sprite/Elephant.visible= false
		$Sprite/J.visible= false
		$Sprite/K.visible= false
		$Sprite/Lion.visible= false
		$Sprite/Juggle.visible= false
		$Sprite/Strongman.visible= false
		$Sprite/Q.visible= false
		$Sprite/Ticket.visible= false
	elif(tex =="bunny"):
		$Sprite/A.visible = false
		$Sprite/Bunny.visible= true
		$Sprite/Clown.visible = false
		$Sprite/Elephant.visible= false
		$Sprite/J.visible= false
		$Sprite/K.visible= false
		$Sprite/Lion.visible= false
		$Sprite/Juggle.visible= false
		$Sprite/Strongman.visible= false
		$Sprite/Q.visible= false
		$Sprite/Ticket.visible= false
	elif(tex =="clown"):
		$Sprite/A.visible = false
		$Sprite/Bunny.visible= false
		$Sprite/Clown.visible = true
		$Sprite/Elephant.visible= false
		$Sprite/J.visible= false
		$Sprite/K.visible= false
		$Sprite/Lion.visible= false
		$Sprite/Juggle.visible= false
		$Sprite/Strongman.visible= false
		$Sprite/Q.visible= false
		$Sprite/Ticket.visible= false
	elif(tex =="elephant"):
		$Sprite/A.visible = false
		$Sprite/Bunny.visible= false
		$Sprite/Clown.visible = false
		$Sprite/Elephant.visible= true
		$Sprite/J.visible= false
		$Sprite/K.visible= false
		$Sprite/Lion.visible= false
		$Sprite/Juggle.visible= false
		$Sprite/Strongman.visible= false
		$Sprite/Q.visible= false
		$Sprite/Ticket.visible= false
	elif(tex =="J"):
		$Sprite/A.visible = false
		$Sprite/Bunny.visible= false
		$Sprite/Clown.visible = false
		$Sprite/Elephant.visible= false
		$Sprite/J.visible= true
		$Sprite/K.visible= false
		$Sprite/Lion.visible= false
		$Sprite/Juggle.visible= false
		$Sprite/Strongman.visible= false
		$Sprite/Q.visible= false
		$Sprite/Ticket.visible= false
	elif(tex =="K"):
		$Sprite/A.visible = false
		$Sprite/Bunny.visible= false
		$Sprite/Clown.visible = false
		$Sprite/Elephant.visible= false
		$Sprite/J.visible= false
		$Sprite/K.visible= true
		$Sprite/Lion.visible= false
		$Sprite/Juggle.visible= false
		$Sprite/Strongman.visible= false
		$Sprite/Q.visible= false
		$Sprite/Ticket.visible= false
	elif(tex =="Lion"):
		$Sprite/A.visible = false
		$Sprite/Bunny.visible= false
		$Sprite/Clown.visible = false
		$Sprite/Elephant.visible= false
		$Sprite/J.visible= false
		$Sprite/K.visible= false
		$Sprite/Lion.visible= true
		$Sprite/Juggle.visible= false
		$Sprite/Strongman.visible= false
		$Sprite/Q.visible= false
		$Sprite/Ticket.visible= false
	elif(tex =="Malabare"):
		$Sprite/A.visible = false
		$Sprite/Bunny.visible= false
		$Sprite/Clown.visible = false
		$Sprite/Elephant.visible= false
		$Sprite/J.visible= false
		$Sprite/K.visible= false
		$Sprite/Lion.visible= false
		$Sprite/Juggle.visible= true
		$Sprite/Strongman.visible= false
		$Sprite/Q.visible= false
		$Sprite/Ticket.visible= false
	elif(tex =="Strongman"):
		$Sprite/A.visible = false
		$Sprite/Bunny.visible= false
		$Sprite/Clown.visible = false
		$Sprite/Elephant.visible= false
		$Sprite/J.visible= false
		$Sprite/K.visible= false
		$Sprite/Lion.visible= false
		$Sprite/Juggle.visible= false
		$Sprite/Strongman.visible= true
		$Sprite/Q.visible= false
		$Sprite/Ticket.visible= false
	elif(tex =="Q"):
		$Sprite/A.visible = false
		$Sprite/Bunny.visible= false
		$Sprite/Clown.visible = false
		$Sprite/Elephant.visible= false
		$Sprite/J.visible= false
		$Sprite/K.visible= false
		$Sprite/Lion.visible= false
		$Sprite/Juggle.visible= false
		$Sprite/Strongman.visible= false
		$Sprite/Q.visible= true
		$Sprite/Ticket.visible= false
	elif(tex =="ticket"):
		$Sprite/A.visible = false
		$Sprite/Bunny.visible= false
		$Sprite/Clown.visible = false
		$Sprite/Elephant.visible= false
		$Sprite/J.visible= false
		$Sprite/K.visible= false
		$Sprite/Lion.visible= false
		$Sprite/Juggle.visible= false
		$Sprite/Strongman.visible= false
		$Sprite/Q.visible= false
		$Sprite/Ticket.visible= true
	set_size(size)

func set_name(nam):
	tileName = nam

func set_size(new_size: Vector2):
	size = new_size
	$Sprite.scale = size / $Sprite.texture.get_size()
  
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

func animate_icon(tex):
	if (tex =="A"):
		$Sprite/A/AnimationPlayer.play("A_Sweep")
	elif(tex =="bunny"):
		$Sprite/Bunny/AnimationPlayer.play("bunny_idle")
	elif(tex =="clown"):
		$Sprite/Clown/AnimationPlayer.play("pidle")
	elif(tex =="elephant"):
		$Sprite/Elephant/AnimationPlayer.play("ele_bola_idle")
	elif(tex =="J"):
		$Sprite/J/AnimationPlayer.play("J_Sweep")
	elif(tex =="K"):
		$Sprite/K/AnimationPlayer.play("K_Sweep")
	elif(tex =="Lion"):
		$Sprite/Lion/AnimationPlayer.play("lion_idle")
	elif(tex =="Malabare"):
		$Sprite/A.visible = true
	elif(tex =="Strongman"):
		$Sprite/Strongman/Viewport/AnimationPlayer.play("bomba_idle")
		print("AAAAA")
	elif(tex =="Q"):
		$Sprite/Q/AnimationPlayer.play("Q_Sweep")
		print("AAAAA")
	elif(tex =="ticket"):
		$Sprite/Ticket/AnimationPlayer.play("New Anim")
		print("AAAAA")
