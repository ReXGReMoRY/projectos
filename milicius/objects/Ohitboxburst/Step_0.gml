if place_meeting(x, y, Oplayer)
{
	
	if (instance_exists(global.Oplayer))
	{
		with (global.Oplayer)
		{
			vida = 0;
			effect_create_above(ef_explosion, Oplayer.x, Oplayer.y, 1, c_red);
			if (vida == 0)
			{
				muerto = true;
				alarm[1] = room_speed * 2;
			}
		}
	}
}