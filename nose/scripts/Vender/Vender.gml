function Vender()
{
		if global.oInterfaz._roca_cantidad > 0
		{
			global.oJugador._Puede_vender = true;
		}else
		{
			show_debug_message("Ya no puede vender");
			global.oJugador._Puede_vender = false;
			global.oJugador._modo_vender = false;
		}
	
		if global.oJugador._Puede_vender == true
		{
			show_debug_message("Puede vender");
			if keyboard_check(ord("G"))
			{
				global.oInterfaz._roca_cantidad -= 1;
				global.oInterfaz._dinero += 10;
			}
		}
}