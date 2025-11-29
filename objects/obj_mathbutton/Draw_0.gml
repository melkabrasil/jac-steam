// Cores
var border = make_color_rgb(255, 140, 0); // laranja
var fill   = c_white;

// Dimensões
var w = 120;
var h = 60;

// Espessura da borda (ajuste à vontade)
var t = hover ? 6 : 4;

// Desenha borda (retângulo maior)
draw_set_color(border);
draw_rectangle(x - w/2 - t, y - h/2 - t, x + w/2 + t, y + h/2 + t, false);

// Desenha corpo (retângulo interno branco)
draw_set_color(fill);
draw_rectangle(x - w/2, y - h/2, x + w/2, y + h/2, false);

// Texto
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y, string(value));
