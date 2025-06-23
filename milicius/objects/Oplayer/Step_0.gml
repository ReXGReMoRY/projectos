var velocidadx;
var velocidady;
x = velocidadx;
y = velocidady;
var velocidadMovimiento = 3;

// Detectar entrada
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

// Aplicar movimiento
x += velocidadx;
y += velocidady;