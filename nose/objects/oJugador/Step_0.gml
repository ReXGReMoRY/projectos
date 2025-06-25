_yspeed += 0.2;
_xspeed = 0;
if keyboard_check(ord("A"))
{
	_xspeed -= 3;
}
if keyboard_check(ord("D"))
{
	_xspeed += 3;
}
if place_meeting(x, y + 1, oSuelo)
{
	_yspeed = 0;
	if keyboard_check(vk_space)
	{
		_yspeed -= 5;
	}
}
if keyboard_check(ord("C"))
{
	SelectorDeOres();
}
move_and_collide(_xspeed, _yspeed, oSuelo);