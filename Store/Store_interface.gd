extends Control

func _ready():
	$Panel/VBoxContainer2/HBoxContainer/Button.grab_focus()
	$Panel/VBoxContainer2/HBoxContainer/HowMuchMoney.text = "Coins: " + str(Global.coins)
	

func _on_Button_pressed():
	print(Global.InventoryItems.count("Health Potion"))
	print("henloo")
	if Global.coins < 5:
		$Panel/VBoxContainer2/HBoxContainer/RichTextLabel.text = "You dont have enough money"
	else:
		print(Global.coins)
		print(Global.InventoryItems)
		Global.InventoryItems.append("Health Potion")
		Global.coins -= 5
		$Panel/VBoxContainer2/HBoxContainer/HowMuchMoney.text = "Coins: " + str(Global.coins)
		#$Panel/VBoxContainer2/HBoxContainer/RichTextLabel.text = "Number of health potions:" + str(Global.InventoryItems.count("Health Potion"))
	
	


func _on_Exit_pressed():
	get_tree().change_scene("res://Store/Store.tscn")


func _on_Teleporter1_pressed():
	get_tree().change_scene("res://World/World.tscn")
	print(Global.pre_scene)
	Global.player_position_x = 200
	Global.player_position_y = 150
