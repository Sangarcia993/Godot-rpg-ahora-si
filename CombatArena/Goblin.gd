extends Sprite

onready var stats = $Stats


func _ready():
	$Label.text = str(stats.health)

func _on_AttackButton_pressed():
	stats.health -= 1
	$Label.text = str(stats.health)


func _on_Stats_no_health():
	get_tree().change_scene("res://World/World.tscn")
