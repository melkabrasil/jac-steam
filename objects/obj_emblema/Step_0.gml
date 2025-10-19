// Fade-in progressivo
if (fade_alpha < 1) {
    fade_alpha += fade_vel;
} else {
    fade_alpha = 1;
    botao_visivel = true;
}

// Atualiza confetes
for (var i = 0; i < array_length(confetes); i++) {
    confetes[i].y += confetes[i].vel;
    if (confetes[i].y > display_get_height()) {
        confetes[i].y = irandom_range(-200, -20);
        confetes[i].x = irandom(display_get_width());
    }
}

if (botao_visivel) {
    var mx = mouse_x;
    var my = mouse_y;

    var bx1 = display_get_width()/2 - 1;
    var bx2 = display_get_width()/2 + 200;
    var by1 = display_get_height()/2 + 100;
    var by2 = display_get_height()/2 + 140;

    if (mouse_check_button_pressed(mb_left)) {
        if (mx > bx1 && mx < bx2 && my > by1 && my < by2) {
            room_goto(b_fases);
        }
    }
}