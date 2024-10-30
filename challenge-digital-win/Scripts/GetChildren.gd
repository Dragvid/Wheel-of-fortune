extends Sprite2D
var pieces
var checkNode
var scene
var winScreen
var gameScreen
var gameOver
func _ready() -> void:
	gameOver=false
	gameScreen=get_parent()
	scene=get_parent().get_children()
	for node in scene:
		if node.name=="Check":
			checkNode=node
	#print(checkNode.name)
	scene=get_parent().get_parent().get_children()
	for node in scene:
		if node.name=="WinScreen":
			winScreen=node
func _process(delta: float) -> void:
	pass
func StopWheeel() ->void:
	pieces=get_children()
	for piece in pieces:
		#print(piece.get_script())
		if piece.is_in_group("Piece"):
			piece.StopMoving()
	print(checkNode.lastPiece)
	if checkNode.lastPiece=="SilverArea":
		#print("Win")
		#gameScreen.visible=false
		winScreen.visible=true
		gameOver=true

func SpinWheel() ->void:
	pieces=get_children()
	for piece in pieces:
		#print(piece.get_path())
		piece.SpinWheel()
	
	
func _on_stop_button_button_up() -> void:
	if gameOver==false:
		StopWheeel()


func _on_spin_button_button_up() -> void:
	if gameOver==false:
		SpinWheel()
