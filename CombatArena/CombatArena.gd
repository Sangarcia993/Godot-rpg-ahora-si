extends Control


const SQLite = preload("res://addons/godot-sqlite/bin/gdsqlite.gdns")
var db #database object
var db_name = "res://DataStore/database" # path to db

func _ready():
	$VBoxContainer/AttackButton.grab_focus()


func _on_QuitButton_pressed():
	get_tree().change_scene("res://World/World.tscn")

func _on_AttackButton_pressed():
	pass

func _on_ItemsButton_pressed():
	Global.pre_scene = "res://CombatArena/CombatArena.tscn"
	get_tree().change_scene("res://Menu/Item_Menu.tscn")
