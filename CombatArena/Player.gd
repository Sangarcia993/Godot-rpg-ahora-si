extends Sprite

onready var stats = $Stats


func _ready():
	$LabelPlayer.text = str(stats.player_health)

func _on_AttackButton_pressed():
	stats.player_health -= 1
	Global.damage_to_player_so_far += 1
	$LabelPlayer.text = str(stats.player_health)
	$Hit.play()
	
	
func _on_Stats_no_health():
	get_tree().change_scene("res://Loose/PlayerLost.tscn")
