draw_self();
if place_meeting(x, y, oJugador) * keyboard_check(ord("E")) //Si esta el jugador encima y le da a la E
{
	_minando = true;
}
if _minando //Si estoy minando
{
	if _x2 > 0 //Si _x2 es mayor que 0
	{
		_x2 -= 0.5;	 //_x2 se va restando
	}
	if _x2 == _x1 //Si _x2 es igual a la misma coordenada que _x1
	{
		_x2 = 0;
		_x1 = 1;
		_y1 = 0;
		_y2 = 0;
	 _minando = false;
		global.oInterfaz._diamante_cantidad += 1; //Se suma la cantidad de rocas
		global.oJugador._experiencia += 4;
		SistemaDeNiveles();
		SelectorDeOres();
		instance_destroy(); //Se elimina
	}
	draw_set_color(c_red);
	draw_rectangle(_x1, _y1, _x2, _y2, false);
	
	if (!place_meeting(x, y, oJugador)) //Si el jugador no esta en la misma coordenada que la instance
	{
		_minando = false;
	}
}