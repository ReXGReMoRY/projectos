if place_meeting(x, y, Oplayer) //Si el sprite del burst le ha dado al jugador
{
	
	if (instance_exists(global.Oplayer))
	{
		with (global.Oplayer)
		{
			vida = 0;
			effect_create_above(ef_explosion, Oplayer.x, Oplayer.y, 1, c_red);
			if (vida == 0) //Si no tengo vida le digo que estoy muerto
			{
				muerto = true;
				alarm[1] = room_speed * 2; //Se espera dos segundos para inicializar alarm1 (EN OPLAYER)
			}
		}
	}
}