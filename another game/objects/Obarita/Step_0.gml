
    // Posición de la varita (ajustada para que siga al jugador)
    var _angle = point_direction(Ojugador.x, Ojugador.y, mouse_x, mouse_y);

    x = Ojugador.x + 40;
    y = Ojugador.y + 20;

    image_angle = _angle; // Hace que gire apuntando al ratón
	
	if mouse_check_button_pressed(mb_left)
	{
		_dir = point_direction(x, y, mouse_x, mouse_y);
		
		
		_Oprojectil_instance =instance_create_layer(Obarita.x, Obarita.y, "Instances", Oprojectil);
		_Oprojectil_instance.image_angle = _dir;
		_Oprojectil_instance.direction = _dir;
		_Oprojectil_instance._projectil_velocidad = 20;
	}

