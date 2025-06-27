draw_set_color(c_white);
_roca_cantidad_anterior = _roca_cantidad;
draw_text(fa_top + 10, fa_left + 10, "Roca: " + string(_roca_cantidad));
draw_text(fa_top + 10, fa_left + 30, "Hierro: " + string(_hierro_cantidad));
draw_set_color(c_yellow);
draw_text(1250, fa_top + 10, "Dinero: " + string(_dinero));
if _diamante_cantidad > 0
{
	draw_set_color(c_blue);
	var sway_amplitud = 10; // cuántos píxeles se mueve a los lados
	var sway_velocidad = 0.01; // velocidad del balanceo

	var offset_x = sway_amplitud * sin(current_time * sway_velocidad);
	draw_text(fa_top + 10 + offset_x, fa_left + 50, "Diamante: " + string(_diamante_cantidad));
	_Ore_recogido = "Diamante";

	
	
	//la coordenada x es 1250 para que este a la derecha del todo de manera manual
}

if _amatista_cantidad > 0 //Si tiene mas de 0 de amatista
{
	draw_set_color(c_purple);
	var sway_amplitud = 10; // cuántos píxeles se mueve a los lados
	var sway_velocidad = 0.01; // velocidad del balanceo

	var offset_x = sway_amplitud * sin(current_time * sway_velocidad);
	draw_text(fa_top + 10 + offset_x, fa_left + 70, "Amatista: " + string(_amatista_cantidad));	
	_Ore_recogido = "Amatista";
}

if _ociodite_cantidad > 0
{
	draw_set_color(c_green);
	var sway_amplitud = 10; // cuántos píxeles se mueve a los lados
	var sway_velocidad = 0.01; // velocidad del balanceo

	var offset_x = sway_amplitud * sin(current_time * sway_velocidad);
	draw_text(fa_top + 10 + offset_x, fa_left + 90, "Ociodite: " + string(_ociodite_cantidad));	
	
	_Ore_recogido = "Ociodite";
}
//Achievements



if _gillionaire_logro && !_gillionaire_desaparece
{
    draw_set_color(c_yellow);
    
    draw_set_font(-1);
    draw_text(oJugador.x, oJugador.y - 70, "Has ganado el logro ¡");
    
    var ancho_parte1 = string_width("Has ganado el logro ¡");
    
    draw_set_font(Font2);
    
    var _time = current_time / 100;
    
    var r = sin(current_time * 0.005) * 127 + 128;
    var g = sin(current_time * 0.005 + pi * 2/3) * 127 + 128;
    var b = sin(current_time * 0.005 + pi * 4/3) * 127 + 128;
    
    draw_set_color(make_color_rgb(r, g, b));
    
    var _x_offset = sin(_time) * 10;
    
    draw_text(oJugador.x + ancho_parte1 + _x_offset, oJugador.y - 70, "Gillionaire!");
    
    draw_set_color(c_white);
}

if global.oJugador._Puede_vender == true
{
		draw_set_color(c_green);
		show_debug_message("He pasado por aqui");
		draw_text(oJugador.x, oJugador.y - 50, "Puede vender roca! (G para vender)");
		draw_self();
}