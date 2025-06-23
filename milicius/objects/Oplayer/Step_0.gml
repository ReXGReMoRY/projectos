velocidadx = 0;
velocidady += 0.1;

if (keyboard_check(ord("A")))
{
    velocidadx = -velocidadMovimiento; // Izquierda
}
else if (keyboard_check(ord("D")))
{
    velocidadx = +velocidadMovimiento; // Derecha
}
else if (keyboard_check(vk_space))
{
	velocidady = -velocidadMovimiento;
}


x += velocidadx;
y += velocidady;