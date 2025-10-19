draw_set_halign(fa_left);
draw_set_valign(fa_middle);

// Confetes
for (var i = 0; i < array_length(confetes); i++) {
    draw_set_alpha(fade_alpha);
    draw_set_color(confetes[i]._cor);
    draw_circle(confetes[i].x, confetes[i].y, 4, false);
}

//  Texto à direita
draw_set_color(c_white);
draw_set_font(fnt_menu_1)
draw_set_alpha(fade_alpha);
draw_text(display_get_width()/2 - 150, display_get_height()/2 + 40, "Parabéns, você completou a fase Technology!");

// Botão central
if (botao_visivel) {
    var bx1 = display_get_width()/2 -1;
    var bx2 = display_get_width()/2 + 200;
    var by1 = display_get_height()/2 + 100;
    var by2 = display_get_height()/2 + 140;

    draw_set_color(c_orange);
    draw_set_alpha(fade_alpha);
    draw_roundrect(bx1, by1, bx2, by2, false);
	draw_set_font(fnt_menu)
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_text(display_get_width()/2 + 100, (by1 + by2)/2, "Continuar");
}
