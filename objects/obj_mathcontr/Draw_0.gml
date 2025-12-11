draw_set_font(fnt_menu);
draw_set_colour(c_white)
draw_text(415, 200, string(a) + " × " + string(b) + " ?");

draw_set_font(fnt_menu_1);
draw_text(405, 400, "Pontos: " + string(global.mscore) + " | Vidas: " + string(global.mlives));

// Fim de jogo (opcional)
if (global.mlives <= 0) {
    draw_set_color(c_ltgrey);
    draw_text(405, 500, "Fim de jogo! Pressione R para reiniciar.");
}