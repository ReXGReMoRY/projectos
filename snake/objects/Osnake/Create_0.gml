step_size = 16;

_direction = "right"; // Puede ser: "left", "right", "up", "down"

target_x = x;
target_y = y;

_body_part = 2;
_all_body_parts = [];
_body_part_inicializado = false;


move_delay = 15;
move_timer = 0;

_random_apple_coordenada();

if _body_part_inicializado
{
	for (var i = 0; i < _body_part; i++)
	{
		show_debug_message(i);
		instance_create_layer(Osnake.x - 16, Osnake.y, "Instances", Osnake);
		if (i  >= _body_part)
		{
			_body_part_inicializado = false;
		}
	}
}