extends TileMap


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
if $cotxe/CollisionShape2D == $segon_cotxe/CollisionShape2D:
		$cotxe.velocitat_max = 0
		$segon_cotxe.velocitat_max = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $cotxe/CollisionShape2D == $segon_cotxe/CollisionShape2D:
		$cotxe.velocitat_max = 0
		$segon_cotxe.velocitat_max = 0


