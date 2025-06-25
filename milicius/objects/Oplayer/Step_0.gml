velocidady = velocidady + 0.15;
velocidadx = 0;
if (muerto) //Si estoy muerto
{
	sprite_index = noone; //Deja de tener sprite el jugador
	ContadorMuerte(); //Se llama a la funcion de contador muerte
	exit; //Se sale de el codigo de Step del jugador
}
if keyboard_check(ord("A")) //Moverse con la A hacia la izquierda
{
	velocidadx = velocidadx - 3;
}
if keyboard_check(ord("D")) //Moverse con la D hacia la derecha
{
	velocidadx = velocidadx + 3;
}

if place_meeting(x, y + 1, _collision_objects) //En caso de que haga colision
{
	velocidady = 0;
	if keyboard_check_pressed(vk_space) //Solo puede saltar en caso de que haga colision
	{
		velocidady = velocidady - 6;
	}
}
if keyboard_check(ord("J"))
{
	room_goto(Room2);
}


move_and_collide(velocidadx, velocidady, _collision_objects);