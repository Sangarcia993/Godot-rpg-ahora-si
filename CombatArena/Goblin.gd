extends Sprite

onready var stats = $Stats


func _ready():
	$Label.text = str(stats.enemy_health)

func _on_AttackButton_pressed():
	print(stats.enemy_health)
	stats.enemy_health -= 1
	print(stats.enemy_health)
	Global.damage_so_far += 1
	$Label.text = str(stats.enemy_health)


func _on_Stats_no_health():
	var rng : RandomNumberGenerator = RandomNumberGenerator.new()
	rng.randomize()
	Global.enemy_health = rng.randi_range(2, 7)
	get_tree().change_scene("res://World/World.tscn")
