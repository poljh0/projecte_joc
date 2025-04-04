extends Node2D
func new_game():
	$Player.start($StartPosition.position)

func _ready():
	new_game()
