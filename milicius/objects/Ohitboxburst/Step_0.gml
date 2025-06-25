if place_meeting(x, y, Oplayer) //Si el sprite del burst le ha dado al jugador
{
	
	if (instance_exists(global.Oplayer)) //Si no se ha borrado el instance del jugador
	{
		with (global.Oplayer) //Con los valores del codigo de Oplayer
		{
			vida -= 1;
			show_debug_message(vida);
			if (vida == 0) //Si no tengo vida le digo que estoy muerto
			{
				muerto = true;
				alarm[1] = room_speed * 2; //Se espera dos segundos para inicializar alarm1 (EN OPLAYER)
			}
		}
	}
}