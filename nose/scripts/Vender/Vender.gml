function Vender()
{
		if global.oInterfaz._roca_cantidad > 0 //Comprueba si tiene al menos 1 de roca
		{
			global.oJugador._Puede_vender = true; //Entonces si que puede vender
		}else
		{
			show_debug_message("Ya no puede vender");
			global.oJugador._Puede_vender = false; //Si no tiene roca no puede vender
			global.oJugador._modo_vender = false; //El valor que ancla para que esta funcion funcione constantemente aunque el jugador haya dejado de apretar la tecla de vender se deja en false para que le tenga que volver a darle a vender
		}
	
		if global.oJugador._Puede_vender == true //En caso de que pueda vender
		{
			show_debug_message("Puede vender");
			if keyboard_check(ord("G")) //Aprieta G para vender
			{
				global.oInterfaz._roca_cantidad -= 1; //Se le resta 1 a 1 la cantidad de rocas
				global.oInterfaz._dinero += 10; //Se le da al jugador 10 de oro por roca
			}
		}
}