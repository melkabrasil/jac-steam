/// função colisao_obstaculo(x, y)
function colisao_obstaculo(x, y) {
    return place_meeting(x, y, obj_chao) || place_meeting(x, y, obj_obs_tech);
}

// Movimento horizontal
if (keyboard_check(vk_right)) {
    direcao = 1;
    sprite_index = spr_jac_walk;

    if (!colisao_obstaculo(x + vel_x, y)) {
        x += vel_x;
    }
}
else if (keyboard_check(vk_left)) {
    direcao = -1;
    sprite_index = spr_jac_walk;

    if (!colisao_obstaculo(x - vel_x, y)) {
        x -= vel_x;
    }
}
else {
    sprite_index = spr_jac_idle;
}

// Aplicar gravidade
vel_y += gravidade;

// Movimento vertical com colisão precisa
if (!colisao_obstaculo(x, y + vel_y)) {
    y += vel_y;
    no_chao = false;
} else {
    // Ajusta posição até encostar no chão
    while (!colisao_obstaculo(x, y + sign(vel_y))) {
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