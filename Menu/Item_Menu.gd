extends Control

func _ready():
	$Panel/VBoxContainer2/HBoxContainer/RichTextLabel.text = "Number of health potions:" + str(Global.InventoryItems.count("Health Potion"))
	$Panel/VBoxContainer2/HBoxContainer/Button.grab_focus()
	

func _on_Button_pressed():
	print(Global.InventoryItems.count("Health Potion"))
	if Global.InventoryItems.count("Health Potion") < 1:
		$Panel/VBoxContainer2/HBoxContainer/RichTextLabel.text = "You dont have"
	else:
		print(Global.player_health)
		Global.InventoryItems.erase("Health Potion")
		Global.player_health += 10
		$Panel/VBoxContainer2/HBoxContainer/RichTextLabel.text = "Number of health potions:" + str(Global.InventoryItems.count("Health Potion"))
	
	





func _on_Exit_pressed():
	get_tree().change_scene(Global.pre_scene)
