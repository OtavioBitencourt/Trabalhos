extends EnemyBase


func _ready():
	animation.animation_finished.connect(kill_air_enemy)
	
func _physics_process(delta):
	_aply_gravity(delta)
	movement(delta)

func flip_direction():
	if wall_detector.is_colliding():
		direction *= -1 #multiplicamos por -1 para que o direction fique positivo e inverta a direção
		wall_detector.scale.x *= -1 #vamo inverter a posição em x do raycast para que detecte colisões à esquerda também
	
	if direction == 1:
		texture.flip_h = true #para inverter a imagem 
	else:
		texture.flip_h = false 
