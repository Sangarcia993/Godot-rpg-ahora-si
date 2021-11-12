tool

extends Area2D

export(String, FILE) var next_scene_path = ""
export(int) var player_spawn_location_x = 0
export(int) var player_spawn_location_y = 0


export(String) var battle_name = ""
export var coins = 0

func _ready():
	if Global.battles_fought.count(battle_name) == 1:
		queue_free()
	if battle_name == "IMPORTANTE":
		if get_tree().get_current_scene().get_name() == "Store":
			pass
		else:
			#Global.pre_scene = get_tree().get_current_scene().get_name()
			pass
		if Global.pre_scene == "World":
			Global.pre_scene = "res://World/World.tscn"
			print(Global.pre_scene)
			print("henlo")
		
func _get_configuration_warning() -> String:
	if next_scene_path == "":
		return "next_scene_path must be set for the portal to work"
	else:
		return ""

func _on_Portal_body_entered(body):
	if get_tree().change_scene(next_scene_path) != OK:
		print("scene unavailable")
	else:	
		if battle_name != "IMPORTANTE" and battle_name != "STORE":
			Global.battles_fought.append(battle_name)
		elif battle_name == "STORE":
			get_tree().change_scene("res://Store/Store.tscn")
		Global.player_position_x = player_spawn_location_x
		Global.player_position_y = player_spawn_location_y
		


		

