extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$AudioStreamPlayer.seek(5.0)
	Global.world = 1
	print(Global.enemy_health)
	print("world1")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

