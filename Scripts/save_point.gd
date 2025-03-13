extends Node3D
var player

# Called when the node enters the scene tree for the first time.
func interact_with_player(player_grab):
	player = player_grab
	if Playerstatus.healthcurrent < Playerstatus.healthmax:
		player.heal(INF)
	Playerstatus.save_all(player)
