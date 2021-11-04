extends Node2D


const SQLite = preload("res://addons/godot-sqlite/bin/gdsqlite.gdns")
var db #database object
var db_name = "res://DataStore/database" # path to db


func _ready():
	db = SQLite.new()
	db.path = db_name
	#commitDataTool()
	readFromDB()


#https://www.youtube.com/watch?v=HG-PV4rlzoY
func commitDataTool():
	db.open_db()
	var tableName = "Player"
	var dict : Dictionary = Dictionary()
	dict["Name"] = "hello"
	dict["Attack"] = 234
	
	db.insert_row(tableName, dict)

func readFromDB():
	db.open_db()
	var tableName = "Player"
	db.query("select * from " + tableName + ";")
	for i in range(0, db.query_result.size()):
		print("Quary results:", db.query_result[i]["Name"], db.query_result[i]["Attack"])
	
	
