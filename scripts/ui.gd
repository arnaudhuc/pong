extends CanvasLayer

class_name UI

@onready var player_points_label = $MarginContainer/PlayerPoints
@onready var enemy_points_label = $MarginContainer/EnemyPoints

func _ready():
	player_points_label.text = "%d" % 0
	enemy_points_label.text = "%d" % 0

func update_enemy_points(points: int):
	print_debug("enemy scored %d" % points)
	enemy_points_label.text = "%d" % points
	
func update_player_points(points: int):
	player_points_label.text = "%d" % points
