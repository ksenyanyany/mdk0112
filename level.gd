extends Node2D

var score = 0
var total = 0

func _ready():
	var coins = get_tree().get_nodes_in_group("Collectable")
	total = coins.size()
	for coin in coins:
		coin.collected.connect(_on_coin_collected)

func _on_coin_collected():
	score += 1
	$CanvasLayer/Label.text = "Монеты: " + str(score)
	if score == total:
		$CanvasLayer/Label.text = "Победа!"
