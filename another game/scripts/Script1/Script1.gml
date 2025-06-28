function CrearEnemigo(){
	_suelo_x_random = irandom_range(global.Osuelo._x_min, global.Osuelo._x_max);
	
	instance_create_layer(_suelo_x_random, Osuelo.y - 65, "Instances", Oenemigo);
}