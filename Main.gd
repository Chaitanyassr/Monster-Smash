extends Node2D

var hit = false

func _ready():
	$LoseLabel.hide()

 
func _process(delta):
	if $UFO.hit == false and hit == true and $UFO2.hit == false and $UFO3.hit == false and $UFO4.hit == false and $UFO5.hit == false and $UFO6.hit == false and $BUG.hit == false and $BUG2.hit == false and $BUG3.hit == false and $BUG4.hit == false:
		print("lose")
		$BUG4.lose = true
		$BUG2.lose = true
		$BUG3.lose = true
		$BUG.lose = true
		$UFO6.lose = true
		$UFO5.lose = true
		$UFO4.lose = true
		$UFO2.lose = true
		$UFO.lose = true
		$UFO3.lose = true
		$LoseLabel.show()
		$Timer.start()
		$CanvasModulate2.show()
		$AudioStreamPlayer2D2.play()
		$Timer2.start()
	if $UFO.hit == true or $UFO2.hit == true:
		score.score1 += 5
		$ClicksLabel.text = "Score: " + str(score.score1) 
	if $UFO4.hit == true:
		score.score1 += 100
		$ClicksLabel.text = "Score: " + str(score.score1) 
	if $UFO3.hit == true:
		score.score1 += 50
		$ClicksLabel.text = "Score: " + str(score.score1) 
	if $UFO5.hit == true:
		score.score1 += 2
		$ClicksLabel.text = "Score: " + str(score.score1) 
	if $UFO5.hit == true or $UFO6.hit == true:
		score.score1 += 1
		$ClicksLabel.text = "Score: " + str(score.score1) 
	if $BUG.hit == true or $BUG2.hit == true or $BUG3.hit == true or $BUG4.hit == true:
		score.score1 -= 10
		$ClicksLabel.text = "Score: " + str(score.score1) 
	$BUG4.hit = false
	$BUG2.hit = false
	$BUG3.hit = false
	$BUG.hit = false
	$UFO6.hit = false
	$UFO5.hit = false
	$UFO4.hit = false
	$UFO3.hit = false
	$UFO.hit = false
	$UFO2.hit = false
	hit = false


func _on_Area2D_input_event( viewport, event, shape_idx ):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT and event.pressed:
		hit = true 


func _on_Timer_timeout():
	get_tree().change_scene("res://STARTMENUE.tscn")
	pass # Replace with function body.


func _on_Button_pressed():
	get_tree().paused = true
	$Button2.show()
	$CanvasModulate.show()


	


func _on_Button2_pressed():
	get_tree().paused = false
	$CanvasModulate.hide()
	$Button2.hide()
	pass # Replace with function body.


func _on_Button3_pressed():
	get_tree().quit()
	pass # Replace with function body.


func _on_Timer2_timeout():
	$AudioStreamPlayer2D2.stop()
	pass # Replace with function body.
