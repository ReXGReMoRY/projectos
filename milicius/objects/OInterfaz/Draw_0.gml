if (!global.Oplayer.muerto) //Si no estoy muerto
{
	vida_actual = global.Oplayer.vida / global.Oplayer.vida_max // de momento no lo uso
    draw_set_color(c_red);
    draw_rectangle(global.Oplayer.x - 20, global.Oplayer.y, global.Oplayer.x + 90, global.Oplayer.y - 15, false);
	//Se dibuja la vida
}

