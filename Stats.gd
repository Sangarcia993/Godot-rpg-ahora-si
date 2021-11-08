extends Node

export var type = ["Goblin", "Player"]
export var choice = 0
signal no_health


onready var player_health = Global.player_health setget set_health

onready var enemy_health = Global.enemy_health setget set_health_enemy


func _ready():
	"""if choice == 1:
		max_health = Global.player_health
	elif choice == 0:
		max_health = Global.enemy_health"""

func set_health(value):
	player_health = value
	if choice == 1:
		Global.player_health = value
	elif choice == 0:
		Global.enemy_health = value
		
	if player_health <= 0:
		emit_signal("no_health")

func set_health_enemy(value):
	enemy_health = value
	if choice == 1:
		Global.player_health = value
	elif choice == 0:
		Global.enemy_health = value
		
	if enemy_health <= 0:
		emit_signal("no_health")
	
