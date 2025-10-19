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
    var bx = x + 970;
    var by = y + 400;
    var bw = sprite_get_width(spr_botao);
    var bh = sprite_get_height(spr_botao);

    var mx = mouse_x;
    var my = mouse_y;

    var mouse_sobre = (mx > bx && mx < bx + bw && my > by && my < by + bh);

    if (mouse_sobre && mouse_check_button_pressed(mb_left)) {
        room_goto(b_fases);
    }
}


if (room == g_math || room == e_engineering || room == h_creditos) {
    var bx = x;
    var by = y;
    var bw = sprite_get_width(spr_botao);
    var bh = sprite_get_height(spr_botao);

    var mx = mouse_x;
    var my = mouse_y;

    var mouse_sobre = (mx > bx && mx < bx + bw && my > by && my < by + bh);

    if (mouse_sobre &&  (mouse_check_button_pressed(mb_left) ||
                    mouse_check_button_pressed(mb_right) ||
                    mouse_check_button_pressed(mb_middle)||
					gamepad_button_check_pressed(0, gp_face1) ||
					gamepad_button_check_pressed(0, gp_face2) ||
    				gamepad_button_check_pressed(0, gp_face3) ||
    				gamepad_button_check_pressed(0, gp_face4))) {
						
						if room == h_creditos{
        room_goto(a_menu);} else { room_goto(b_fases); }}}
		
		