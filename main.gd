extends Node

@export var Game_ui: CanvasLayer
@export var game_over_ui_template: PackedScene

func _ready():
	GameManager.game_over.connect(trigger_game_over)

func trigger_game_over():
	#Delete GameUi
	if Game_ui:
		Game_ui.queue_free()
		Game_ui = null
		
		#Criar GameOverUI
		var game_over_ui: GameOverUI = game_over_ui_template.instantiate()
		add_child(game_over_ui)
	
	
	
	
