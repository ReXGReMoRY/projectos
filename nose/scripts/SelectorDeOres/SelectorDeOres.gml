function SelectorDeOres(){
	var _Ores = ["Roca", "Hierro"]; //Creo una lista de los dos Ores disponibles
	var _Ores_seleccionados = _Ores[irandom(array_length(_Ores) - 1)]; //Elijo uno aleatorio y resto 1 para que el rango no se pase del valor original de valores que hay dentro de la lista
	show_debug_message(_Ores_seleccionados); //Compruebo internamente cual ha escogido
	_suelo_x_random = irandom_range(global.oSuelo._x_min, global.oSuelo._x_max); //Escojo un valor cardinal "x" aleatorio
	if (_Ores_seleccionados == "Roca") //Si el valor escogido es roca
	{
		instance_create_layer(_suelo_x_random, global.oSuelo.y - 65, "Instances", oRoca); //Creo una instancia nueva de roca en un sitio aleatorio
		show_debug_message("Mi coordenada x es: " + string(_suelo_x_random)); //Compruebo el valor interanmente aleatorio el cual se ha creado  en
	}
	if (_Ores_seleccionados == "Hierro") //Si el valor escogido es hierro
	{
		instance_create_layer(_suelo_x_random, global.oSuelo.y - 65, "Instances", oHierro); //Creo una instancia nueva de roca en un sitio aleatorio
		show_debug_message("Mi coordenada x es: " + string(_suelo_x_random))
	}
	return _Ores_seleccionados;
}