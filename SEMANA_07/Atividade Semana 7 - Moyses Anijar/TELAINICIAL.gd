extends Sprite

func _ready():
	pass

func _on_Button_pressed():
	get_tree().change_scene("res://TELA2.tscn") # Replace with function body.

func _on_Button2_pressed():
	 get_tree().quit()
