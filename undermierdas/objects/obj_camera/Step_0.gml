// Seguir al jugador y centrarlo
var target_x = obj_player.x - cam_width / 2;
var target_y = obj_player.y - cam_height / 2;

// Puedes hacer que el movimiento sea suave usando lerp:
var cam_x = lerp(camera_get_view_x(camera_id), target_x, 0.1);
var cam_y = lerp(camera_get_view_y(camera_id), target_y, 0.1);

camera_set_view_pos(camera_id, cam_x, cam_y);

// Limitar la cámara a los bordes del room
cam_x = clamp(cam_x, 0, room_width - cam_width);
cam_y = clamp(cam_y, 0, room_height - cam_height);

camera_set_view_pos(camera_id, cam_x, cam_y);