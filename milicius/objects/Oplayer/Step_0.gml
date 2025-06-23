var velocidadx = 0;
var velocidady = 0;
var velocidadMovimiento = 3;
var velocidadMovimientoShift = 6;

if (keyboard_check(ord("A")))
{
    velocidadx = -velocidadMovimiento; // Izquierda
}
else if (keyboard_check(ord("D")))
{
    velocidadx = +velocidadMovimiento; // Derecha
}

else if (keyboard_check(ord("W")))
{
    velocidady = -velocidadMovimiento; // Arriba
}
else if (keyboard_check(ord("S")))
{
    velocidady = +velocidadMovimiento; // Abajo
}


x += velocidadx;
y += velocidady;