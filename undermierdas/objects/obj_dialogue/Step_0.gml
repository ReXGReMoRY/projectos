// Mostrar texto letra por letra
if (!dialogue_done) {
    frame_counter++;

    if (frame_counter >= text_speed) {
        frame_counter = 0;
        char_index++;

        var current_text = dialogue[dialogue_index];
        text_to_show = string_copy(current_text, 1, char_index);

        if (char_index >= string_length(current_text)) {
            dialogue_done = true;
            waiting_for_input = true;
        }
    }
} else {
    // Avanzar diálogo al presionar Z después de que terminó la línea
    if (keyboard_check_pressed(ord("Z"))) {
        dialogue_index++;

        if (dialogue_index >= array_length(dialogue)) {
            // Fin del diálogo
            with (obj_player) {
                can_move = true;
            }
            global.dialogue_active = false;
            instance_destroy();
        } else {
            // Preparar siguiente línea
            dialogue_done = false;
            waiting_for_input = false;
            char_index = 0;
            frame_counter = 0;
            text_to_show = "";
        }
    }
}