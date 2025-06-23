if place_meeting(x, y, Oplayer)
{
	show_debug_message("Le ha dado al jugador");
	effect_create_above(ef_explosion, Oplayer.x, Oplayer.y, 1, c_red);
	instance_destroy(Oplayer);
}