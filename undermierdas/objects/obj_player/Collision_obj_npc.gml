// Activar diálogo al presionar una tecla
if (keyboard_check_pressed(ord("Z"))) {
    // Iniciar diálogo si no está activo
    if (!instance_exists(obj_dialogue)) {
        instance_create_layer(x, y - 32, "GUI", obj_dialogue);
    }
}