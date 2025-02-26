extends AnimatedSprite2D
@onready var animated_sprite_2d = $"."
@onready var collision_shape = $StaticBody2D/CollisionShape2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	collision_shape.set_deferred("disabled", true)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressure_plate_4_spear_state(state: Variant) -> void:
	if(state):
		animated_sprite_2d.play("activate")
		collision_shape.set_deferred("disabled", false)
	else: 
		animated_sprite_2d.play("withdraw")
		collision_shape.set_deferred("disabled", true)
		
	pass # Replace with function body.
