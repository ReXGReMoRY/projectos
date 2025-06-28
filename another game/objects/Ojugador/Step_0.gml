_velocidady += 0.2;
_velocidadx = 0;
if keyboard_check(ord("A"))
{
	_velocidadx -= 3;
}
if keyboard_check(ord("D"))
{
	_velocidadx += 3;
}
if place_meeting(x, y + 1, Osuelo)
{
	_velocidady = 0;
	if keyboard_check_pressed(vk_space)
	{
		_velocidady -= 5;
	}
}
move_and_collide(_velocidadx, _velocidady, Osuelo);