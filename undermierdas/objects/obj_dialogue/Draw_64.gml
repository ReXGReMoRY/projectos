draw_set_color(c_black);
draw_set_alpha(0.7);
draw_rectangle(32, display_get_gui_height() - 96, display_get_gui_width() - 32, display_get_gui_height() - 32, false);

draw_set_color(c_white);
draw_set_alpha(1);
draw_text(48, display_get_gui_height() - 80, text_to_show);

// Flecha de continuar
if (dialogue_done && ((current_time div 400) mod 2 == 0)) {
    draw_text(display_get_gui_width() - 48, display_get_gui_height() - 40, ">>");
}