draw_set_halign(fa_left);
draw_set_valign(fa_middle);

// Fundo
draw_set_alpha(1);
draw_set_color(c_black);
draw_rectangle(0, 0, display_get_width(), display_get_height(), false);

// 🎉 Confetes
for (var i = 0; i < array_length(confetes); i++) {
    draw_set_alpha(fade_alpha);
    draw_set_color(confetes[i].cor);
    draw_circle(confetes[i].x, confetes[i].y, 4, false);
}

// 🖼️ Emblema à esquerda
draw_set_alpha(fade_alpha);
var emblema_x = 100;
var emblema_y = display_get_height()/2;
draw_sprite(spr_emblema_tech, 0, emblema_x, emblema_y);

// ✨ Texto à direita
draw_set_color(c_aqua);
draw_set_alpha(fade_alpha);
draw_text(display_get_width()/2 + 100, display_get_height()/2 - 40, mensagem);

// 🟩 Botão central
if (botao_visivel) {
    var bx1 = display_get_width()/2 - 90;
    var bx2 = display_get_width()/2 + 90;
    var by1 = display_get_height()/2 + 100;
    var by2 = display_get_height()/2 + 140;

    draw_set_color(c_lime);
    draw_set_alpha(fade_alpha);
    draw_roundrect(bx1, by1, bx2, by2, false);
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_text(display_get_width()/2, (by1 + by2)/2, "Continuar");
}
draw_set_alpha(1); // reset alpha