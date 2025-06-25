draw_set_color(c_white);
draw_text(fa_top + 10, fa_left + 10, "Roca: " + string(_roca_cantidad));
draw_text(fa_top + 10, fa_left + 30, "Hierro: " + string(_hierro_cantidad));
if _diamante_cantidad > 0
{
	draw_set_color(c_blue);
	var sway_amplitud = 10; // cuántos píxeles se mueve a los lados
	var sway_velocidad = 0.01; // velocidad del balanceo

	var offset_x = sway_amplitud * sin(current_time * sway_velocidad);
	draw_text(fa_top + 10 + offset_x, fa_left + 50, "Diamante: " + string(_diamante_cantidad));


	draw_set_color(c_yellow);
	draw_text(1250, fa_top + 10, "Dinero: " + string(_dinero));
	
	//la coordenada x es 1250 para que este a la derecha del todo de manera manual
}

if _amatista_cantidad > 0 //Si tiene mas de 0 de amatista
{
	draw_set_color(c_purple);
	var sway_amplitud = 10; // cuántos píxeles se mueve a los lados
	var sway_velocidad = 0.01; // velocidad del balanceo

	var offset_x = sway_amplitud * sin(current_time * sway_velocidad);
	draw_text(fa_top + 10 + offset_x, fa_left + 70, "Amatista: " + string(_amatista_cantidad));


	draw_set_color(c_yellow);
	draw_text(1250, fa_top + 10, "Dinero: " + string(_dinero));
	
}

if global.oJugador._Puede_vender == true
{
		draw_set_color(c_green);
		show_debug_message("He pasado por aqui");
		draw_text(oJugador.x, oJugador.y - 50, "Puede vender roca! (G para vender)");
		draw_self();
}