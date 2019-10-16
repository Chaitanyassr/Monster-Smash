extends Node2D

var score1 = 0 setget set_score1
const filepath = "res://score1.data"
func _ready():

	load_score()
	pass

func load_score():
	var file = File.new()
	if not file.file_exists(filepath): return
	file.open(filepath, File.READ)
	score1 = file.get_var()
	file.close()
	
func save_bestscore():
	var file = File.new()
	file.open(filepath, File.WRITE)
	file.store_var(score1)
	file.close()

func set_score1(new_value):
	score1 = new_value
	save_bestscore()
	
