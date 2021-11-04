tool

extends Area2D

export var passed = 0
export(String, FILE) var next_scene_path = ""
export(String) var player_spawn_location = Vector2.ZERO



func _get_configuration_warning() -> String:
	if next_scene_path == "":
		return "next_scene_path must be set for the portal to work"
	else:
		return ""

func _on_Portal_body_entered(body):
	print(passed, "sdfgh AAAAAAAAAAAAAAAAAAAA")
	if passed == 1:
		queue_free()
	else:
		get_node("../YSort/Player").position = Vector2(0,0)
		get_tree().change_scene(next_scene_path)
		#print("scene unavailable")
		passed += 1
