// Tamaño de la cámara
cam_width = 640;
cam_height = 480;

// Crear la cámara manualmente
camera_id = camera_create_view(0, 0, cam_width, cam_height, 0, obj_player, -1, -1, -1, -1);

// Asignarla al viewport 0
view_camera[0] = camera_id;