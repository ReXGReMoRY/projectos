velocidady = velocidady + 0.15;
velocidadx = 0;
if (muerto) exit;
if keyboard_check(ord("A"))
{
	velocidadx = velocidadx - 3;
}
if keyboard_check(ord("D"))
{
	velocidadx = velocidadx + 3;
}

if place_meeting(x, y + 1, _collision_objects)
{
	velocidady = 0;
	if keyboard_check_pressed(vk_space)
	{
		velocidady = velocidady - 6;
	}
}
move_and_collide(velocidadx, velocidady, _collision_objects);