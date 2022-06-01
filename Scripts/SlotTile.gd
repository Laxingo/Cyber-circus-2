extends Node2D
class_name SlotTile

var size :Vector2
var tileName
var clearAnims

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
		$Sprite/Roulette.visible= false
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
		$Sprite/Roulette.visible= false
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
		$Sprite/Roulette.visible= false
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
		$Sprite/Roulette.visible= false
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
		$Sprite/Roulette.visible= false
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
		$Sprite/Roulette.visible= false
	elif(tex =="lion"):
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
		$Sprite/Roulette.visible= false
	elif(tex =="juggle"):
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
		$Sprite/Roulette.visible= false
	elif(tex =="strongman"):
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
		$Sprite/Roulette.visible= false
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
		$Sprite/Roulette.visible= false
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
		$Sprite/Roulette.visible= false
	elif(tex =="roulette"):
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
		$Sprite/Ticket.visible= false
		$Sprite/Roulette.visible= true
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
	$Sprite/Roulette/AnimationPlayer.stop()
	$Sprite/Ticket/AnimationPlayer.stop()
	$Sprite/Q/AnimationPlayer.stop()
	$Sprite/Strongman/Viewport/AnimationPlayer.stop()
	$Sprite/Juggle/AnimationPlayer.stop()
	$Sprite/Lion/AnimationPlayer.stop()
	$Sprite/K/AnimationPlayer.stop()
	$Sprite/J/AnimationPlayer.stop()
	$Sprite/Elephant/AnimationPlayer.stop()
	$Sprite/Clown/AnimationPlayer.stop()
	$Sprite/Bunny/AnimationPlayer.stop()
	$Sprite/A/AnimationPlayer.stop()


func move_by(by: Vector2):
  move_to(position + by)
  
func spin_up():
	$Animations.play('SPIN_UP')
  
func spin_down():
	$Animations.play('SPIN_DOWN')

func animate_icon(prizeID):
	if (prizeID =="A"):
		if !$Sprite/A/AnimationPlayer.is_playing():
			$Sprite/A/AnimationPlayer.play("A_Sweep")
	elif(prizeID =="bunny"):
		$Sprite/Bunny/AnimationPlayer.play("bunny")
	elif(prizeID =="clown"):
		$Sprite/Clown/AnimationPlayer.play("palhaço")
	elif(prizeID =="elephant"):
		$Sprite/Elephant/AnimationPlayer.play("ele_bola")
	elif(prizeID =="J"):
		$Sprite/J/AnimationPlayer.play("J_Sweep")
	elif(prizeID =="K"):
		$Sprite/K/AnimationPlayer.play("K_Sweep")
	elif(prizeID =="lion"):
		$Sprite/Lion/AnimationPlayer.play("lion_win")
	elif(prizeID =="juggle"):
		$Sprite/Juggle/AnimationPlayer.play("juggle ma balls")
	elif(prizeID =="strongman"):
		$Sprite/Strongman/Viewport/AnimationPlayer.play("b1")
	elif(prizeID =="Q"):
		$Sprite/Q/AnimationPlayer.play("Q_Sweep")
	elif(prizeID =="ticket"):
		$Sprite/Ticket/AnimationPlayer.play("New Anim")
	elif(prizeID =="roulette"):
		$Sprite/Roulette/AnimationPlayer.play("Bonus")
