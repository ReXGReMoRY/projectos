_velocidady += _gravedad;
if instance_exists(Ojugador)
{
    if x < Ojugador.x {
        _velocidadx = 1;
    } else if x > Ojugador.x {
        _velocidadx = -1;
    } else {
        _velocidadx = 0;
    }
}
if place_meeting(x, y, Oprojectil)
{
	_vida_enemigo -= 10;
	show_debug_message(_vida_enemigo);
	sprite_index = Senemigohit;
	
	if _vida_enemigo <= 0
	{
		effect_create_above(ef_firework, x + 20, y, 10, c_red);
		instance_destroy();
		CrearEnemigo();
	}
}
move_and_collide(_velocidadx, _velocidady, Osuelo);