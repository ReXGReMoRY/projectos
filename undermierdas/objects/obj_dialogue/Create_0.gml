dialogue = [
    "Fucking Nigger",
];

dialogue_index = 0;
char_index = 0;
frame_counter = 0;
text_speed = 2;

text_to_show = "";
dialogue_done = false;
waiting_for_input = false;

// Bloquear movimiento del jugador
with (obj_player) {
    can_move = false;
}

// Activar flag global
global.dialogue_active = true;
