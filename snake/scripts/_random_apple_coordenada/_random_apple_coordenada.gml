function _random_apple_coordenada(){
	instance_destroy(Oapple);
	_random_x_room = random_range(0, 632);
	_random_y_room = random_range(0, 348);
	if _random_x_room % 2 == 0
	{
		_random_x_room += 1;
	}
	if _random_y_room % 2 == 0
	{
		_random_y_room += 1;
	}
	instance_create_layer(_random_x_room, _random_y_room, "Instances", Oapple);
	global._apple_creada += 1;
}