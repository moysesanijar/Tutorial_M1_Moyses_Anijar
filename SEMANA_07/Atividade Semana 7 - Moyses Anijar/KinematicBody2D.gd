extends KinematicBody2D

func _ready():
	pass
	
func _physics_process(delta):
	var mov = Vector2()
	mov.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	mov = move_and_slide(mov)
	mov.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	move_and_slide(mov*100)


func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://TELAFINAL.tscn")
