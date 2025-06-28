function SistemaDeNiveles(){
	show_debug_message(global.oJugador._experiencia);
	if global.oJugador._experiencia   >= global.oJugador._experiencia_next_level
	{
		
		global.oJugador._nivel_ += 1;
		
		global.oJugador._experiencia_next_level = global.oJugador._experiencia_next_level * 2;
		show_debug_message("Para el siguiente nivel necesitas: " + string(global.oJugador._experiencia_next_level) + " experiencia");
		
		global.oInterfaz._show_level_message = true;
		global.oInterfaz.alarm[1] = room_speed * 3;
	}
}