if oOcioditeBurst.image_index == 76
		{
			instance_create_layer(x + 100, global.oSuelo.y - 65, "Instances", oOciodite); //justo despues de que aparezca el efecto aparece el diamante
			effect_create_above(ef_explosion, x + 100, oSuelo.y - 40, 1000, c_green);
			
		}
if oOcioditeBurst.image_index > 95
	{
		instance_destroy();
	}