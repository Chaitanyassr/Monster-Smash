extends Node2D



func _on_Button_pressed():
	get_tree().change_scene("res://Main.tscn")



func _on_Button2_pressed():
	get_tree().quit()
	pass # Replace with function body.


func _on_Button3_pressed():
	get_tree().change_scene("res://textedit.tscn")
	pass # Replace with function body.

func _ready():
	$score.text = str(score.score1)
	