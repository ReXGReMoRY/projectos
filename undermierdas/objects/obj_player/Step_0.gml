// Reiniciar velocidad
hsp = 0;
vsp = 0;

// Input básico tipo Undertale
if (keyboard_check(ord("A")))  hsp = -move_speed;
if (keyboard_check(ord("D"))) hsp = move_speed;
if (keyboard_check(ord("W")))    vsp = -move_speed;
if (keyboard_check(ord("S")))  vsp = move_speed;

// Movimiento por eje (para evitar movimientos diagonales)
if (hsp != 0) vsp = 0;

// Movimiento y colisiones
// Mover horizontal
if (hsp != 0) {
    if (!place_meeting(x + hsp, y, obj_solid)) {
        x += hsp;
    } else {
        // Mover hasta tocar pared
        while (!place_meeting(x + sign(hsp), y, obj_solid)) {
            x += sign(hsp);
        }
    }
}

// Mover vertical
if (vsp != 0) {
    if (!place_meeting(x, y + vsp, obj_solid)) {
        y += vsp;
    } else {
        // Mover hasta tocar pared
        while (!place_meeting(x, y + sign(vsp), obj_solid)) {
            y += sign(vsp);
        }
    }
}

if (!can_move) exit;

// Resto del código de movimiento aquí 
//dick Nigger dick dick Nigger