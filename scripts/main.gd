extends Node2D

var player_points = 0
var enemy_points = 0

@onready var enemy_paddle = $EnemyPaddle
@onready var player_paddle = $PlayerPaddle
@onready var ball: Ball = $Ball
@onready var ui: UI = $UI

func _on_enemy_scored():
	enemy_points += 1
	ui.update_enemy_points(enemy_points)
	reset_game_state()


func _on_player_scored():
	player_points += 1
	ui.update_player_points(player_points)
	reset_game_state()

func reset_game_state():
	enemy_paddle.global_position.y = 0
	enemy_paddle.linear_velocity = Vector2.ZERO
	player_paddle.global_position.y = 0
	player_paddle.linear_velocity = Vector2.ZERO
	ball.velocity = Vector2.ZERO
	ball.global_position = Vector2.ZERO
	ball.start_ball()
