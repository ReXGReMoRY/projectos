// Solo permitir diálogo si no hay uno activo
if (!global.dialogue_active) {
    // Distancia entre NPC y jugador
    var dist = point_distance(x, y, obj_player.x, obj_player.y);

    // Si está cerca y presiona Z
    if (dist < 32 && keyboard_check_pressed(ord("Z"))) {
        instance_create_layer(x, y - 32, "GUI", obj_dialogue);
        global.dialogue_active = true;
    }
}