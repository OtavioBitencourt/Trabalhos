extends Node

var coins = 0
var score = 0
var player_life = 3

var current_checkpoint = null

var player = null

func respawn_player():
	if current_checkpoint != null:
		player.possition = current_checkpoint.global_position
