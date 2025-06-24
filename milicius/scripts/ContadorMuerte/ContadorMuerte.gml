global.contador_muerte = 0;
function ContadorMuerte(){
	with (Oplayer)
{
	if (muerto) //Si estoy muerto
	{
		show_debug_message("Anterior contador: " + string(global.contador_muerte));
		global.contador_muerte += 1 //Se suma uno al contador de la meurte
		muerte_contada = true; //Se comprueba que se ha sumado la muerte
		show_debug_message(global.contador_muerte); //Se hace display 
		if (muerte_contada == true) //Si se ha contado
		{
			muerto = false; //Dejo de estoy muerto para que deje de contar
		}
	}
}
}