global.contador_muerte = 0;
function ContadorMuerte(){
	with (Oplayer)
{
	if (muerto)
	{
		show_debug_message("Anterior contador: " + string(global.contador_muerte));
		global.contador_muerte += 1
		muerte_contada = true;
		show_debug_message(global.contador_muerte);
		if (muerte_contada == true)
		{
			muerto = false;
		}
	}
}
}