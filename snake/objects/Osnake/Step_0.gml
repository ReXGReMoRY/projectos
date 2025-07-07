// Movimiento por teclas (una vez por dirección)
if keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left) {
    if (_direction != "right") _direction = "left";
}
if keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right) {
    if (_direction != "left") _direction = "right";
}
if keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up) {
    if (_direction != "down") _direction = "up";
}
if keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down) {
    if (_direction != "up") _direction = "down";
}

// Solo avanzar si hemos llegado a la posición destino
if (x == target_x && y == target_y) {
    move_timer += 1;

    if (move_timer >= move_delay) {
        switch (_direction) {
            case "left":  target_x -= step_size; break;
            case "right": target_x += step_size; break;
            case "up":    target_y -= step_size; break;
            case "down":  target_y += step_size; break;
        }
        move_timer = 0;
    }
}



x = approach(x, target_x, step_size);
y = approach(y, target_y, step_size);

function approach(current, target, amount) {
    if (current < target) return min(current + amount, target);
    if (current > target) return max(current - amount, target);
    return current;
}


if place_meeting(Osnake.x, Osnake.y, Oapple)
{
	_body_part_inicializado = true;
	_random_apple_coordenada();
}
	