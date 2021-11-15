extends Node

var world = 1
var InventoryItems = ["Health Potion"]
var InventoryWeopens = []
var coins = 0
var pre_scene = ""

var player_position_x = 200
var player_position_y = 82

var damage_so_far = 0
var damage_to_player_so_far = 0

onready var enemy_health : int = 12
var player_health = 123
#var enemy_type = 0

var battles_fought = []
