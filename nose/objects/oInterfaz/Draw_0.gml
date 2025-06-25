draw_set_color(c_white);
draw_text(fa_top + 10, fa_left + 10, "Roca: " + string(_roca_cantidad));
draw_text(fa_top + 10, fa_left + 30, "Hierro: " + string(_hierro_cantidad));


draw_set_color(c_yellow);
draw_text(1250, fa_top + 10, "Dinero: " + string(_dinero));


function VenderInterfaz()
{
		draw_self();
		draw_set_color(c_green);
		draw_text(oJugador.x, oJugador.y - 10, "Puede vender roca! (G para vender)");
}