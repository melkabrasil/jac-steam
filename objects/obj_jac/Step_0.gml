// Movimento horizontal
if (keyboard_check(vk_right)) {
    direcao = 1;
    sprite_index = spr_jac_walk;
    if (!place_meeting(x + vel_x, y, obj_chao)) {
        x += vel_x;
    }
}
else if (keyboard_check(vk_left)) {
    direcao = -1;
    sprite_index = spr_jac_walk;
    if (!place_meeting(x - vel_x, y, obj_chao)) {
        x -= vel_x;
    }
}
else {
    sprite_index = spr_jac_idle;
}

// Aplicar gravidade
vel_y += gravidade;

// Movimento vertical com colisão precisa
if (!place_meeting(x, y + vel_y, obj_chao)) {
    y += vel_y;
    no_chao = false;
} else {
    // Ajusta posição até encostar no chão
    while (!place_meeting(x, y + sign(vel_y), obj_chao)) {
        y += sign(vel_y);
    }
    vel_y = 0;
    no_chao = true;
}

// Pulo
if (keyboard_check_pressed(vk_up) && no_chao) {
    vel_y = pulo;
    sprite_index = spr_jac_idle;
}

// Espelhar sprite conforme direção
image_xscale = direcao;