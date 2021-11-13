extends Control

const SQLite = preload("res://addons/godot-sqlite/bin/gdsqlite.gdns")
var db #database object
var db_name = "res://DataStore/database" # path to db

var format_string = "Music/World%s"
var actual_string = format_string % str(Global.world)

var format_string_background = "Background%s"
var actual_string_background = format_string_background % str(Global.world)


func _ready():
	print(actual_string)
	$VBoxContainer/AttackButton.grab_focus()
	get_node(actual_string_background).visible = true
	
	get_node(actual_string).play()
	
	print(get_node(actual_string_background))
		
		
		

func _on_QuitButton_pressed():
	get_tree().change_scene("res://World/World.tscn")

func _on_AttackButton_pressed():
	pass

func _on_ItemsButton_pressed():
	Global.pre_scene = "res://CombatArena/CombatArena.tscn"
	get_tree().change_scene("res://Menu/Item_Menu.tscn")
