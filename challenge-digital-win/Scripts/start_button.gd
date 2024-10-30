extends Node2D

var mainMenu
var gameScreen
var winScreen
var scene
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	mainMenu=self
	scene=get_parent().get_children()
	for node in scene:
		if node.name=="GameMain":
			gameScreen=node
		if node.name=="WinScreen":
			winScreen=node

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func WinGame()->void:
	gameScreen.visible=false
	winScreen.visible=true

func _on_start_button_button_up() -> void:
	mainMenu.visible=false
	gameScreen.visible=true
