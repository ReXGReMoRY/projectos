function SelectorDeOres(){
	 _random_number_even_rarest_ore = irandom_range(0, 100);//esta variable escogera un numero entre 0 y 100
	 _random_number_rare_ore = irandom_range(0, 20); //esta variable escogera un numero entre 0  y 20
	 _random_number_rarest_ore = irandom_range(0, 50); //esta variable escogera un numero entre 0 y 50
	
	if _random_number_rare_ore == 10 || _random_number_rare_ore == 20 //Si la variable del diamante es 10 o 20
	{
		
		_suelo_x_random1 = irandom_range(global.oSuelo._x_min, global.oSuelo._x_max);//Guardo una variable con coordenadas aleatorias del suelo de la cardinal x
		instance_create_layer(_suelo_x_random1, global.oSuelo.y - 65, "Instances", oDiamante); //justo despues de que aparezca el efecto aparece el diamante
		effect_create_above(ef_firework, _suelo_x_random1, oSuelo.y - 65, 10, c_blue); //Se crea un efecto azul donde aparece el diamante
	}
	
	if _random_number_rarest_ore == 50 //si el numero de la variable del mineral mas raro es 50
	{
		_suelo_x_random2 = irandom_range(global.oSuelo._x_min, global.oSuelo._x_max); //Creo una variable que guarda coordenadas aleatorias del suelo (cardina x)
		instance_create_layer(_suelo_x_random2, global.oSuelo.y - 65, "Instances", oAmatista); //justo despues de que aparezca el efecto aparece el diamante
		effect_create_above(ef_explosion, _suelo_x_random2, oSuelo.y - 40, 1000, c_purple);
		//show_debug_message(_random_number_rarest_ore); //Compruebo el numero que ha salido el cual deberia de ser 50
	}
	if _random_number_even_rarest_ore == 100//si el numero de la variable del mineral mas raro es 50
	{
		
		_suelo_x_random3 = irandom_range(global.oSuelo._x_min, global.oSuelo._x_max); //Creo una variable que guarda coordenadas aleatorias del suelo (cardina x)
		oOcioditeBurstInstance = instance_create_layer(_suelo_x_random3, global.oSuelo.y - 547, "Instances", oOcioditeBurst);
		oOcioditeBurstInstance._suelo_x_random3 = _suelo_x_random3;
		
	}
	
	var _Ores = ["Roca", "Hierro"]; //Creo una lista de los dos Ores comunes disponibles
	var _Ores_seleccionados = _Ores[irandom(array_length(_Ores) - 1)]; //Elijo uno aleatorio y resto 1 para que el rango no se pase del valor original de valores que hay dentro de la lista
	
	//show_debug_message(_Ores_seleccionados); //Compruebo internamente cual ha escogido
	
	_suelo_x_random = irandom_range(global.oSuelo._x_min, global.oSuelo._x_max); //Escojo un valor cardinal "x" aleatorio
	
	if (_Ores_seleccionados == "Roca") //Si el valor escogido es roca
	{
		instance_create_layer(_suelo_x_random, global.oSuelo.y - 65, "Instances", oRoca); //Creo una instancia nueva de roca en un sitio aleatorio
		//show_debug_message("Mi coordenada x es: " + string(_suelo_x_random)); //Compruebo el valor interanmente aleatorio el cual se ha creado  en
	}
	if (_Ores_seleccionados == "Hierro") //Si el valor escogido es hierro
	{
		instance_create_layer(_suelo_x_random, global.oSuelo.y - 65, "Instances", oHierro); //Creo una instancia nueva de roca en un sitio aleatorio
		//show_debug_message("Mi coordenada x es: " + string(_suelo_x_random))
	}
	return _Ores_seleccionados;
}