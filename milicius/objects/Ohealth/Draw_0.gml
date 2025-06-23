var ancho_total = 100;
var ancho_actual = ancho_total * (vida / vida_max);
draw_set_color(c_red);
draw_rectangle(x, y - 20, x + ancho_actual, y - 10, false);