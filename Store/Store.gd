extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Player.global_position = Vector2(167, 121)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("interact"):
		get_tree().change_scene("res://Store/Store_interface.tscn")
		Global.pre_scene = "res://Store/Store.tscn"


func _on_Portal_body_entered(body):
	get_tree().change_scene(str(Global.pre_scene))
