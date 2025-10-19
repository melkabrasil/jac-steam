/// Função de colisão com obstáculos
function colisao_obstaculo(x, y) {
    return place_meeting(x, y, obj_chao);
}

//#region Diálogo com NPCs
if (distance_to_object(obj_par_npcs) <= 10) {
    sprite_index = spr_jac_idle;

    if (keyboard_check_pressed(ord("Z"))) {
        var _npc = instance_nearest(x, y, obj_par_npcs);
        var _dialogo = instance_create_layer(x, y, "Instances", obj_dialogo);

        if (object_exists(obj_dialogo)) {
            _dialogo.npc_nome = _npc.nome;
        }
    }
}
//#endregion

// Movimento horizontal
if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
    direcao = 1;
    sprite_index = spr_jac_walk;
    if (!colisao_obstaculo(x + vel_x, y)) {
        x += vel_x;
    }
}
else if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
    direcao = -1;
    sprite_index = spr_jac_walk;
    if (!colisao_obstaculo(x - vel_x, y)) {
        x -= vel_x;
    }
}
else {
    sprite_index = spr_jac_idle;
}

// Espelhar sprite conforme direção
image_xscale = direcao;

// Coleta de átomo
if (place_meeting(x, y, obj_atomo)) {
    atomo += 1;
}

// Contador de interações com NPCs
if (distance_to_object(obj_par_npcs) <= 10 && keyboard_check_pressed(ord("Z"))) {
    contador_z += 1;
} else if (distance_to_object(obj_par_npcs) > 10) {
    contador_z = 0;
}

// Contador de interações com NPCs
if (distance_to_object(obj_par_npcs) <= 10 && keyboard_check_pressed(vk_space)) {
    contador_space += 1;
}

// Gravidade
vel_y += gravidade;

// Verifica se Jac está no chão
if (!place_meeting(x, y + vel_y, obj_chao)) {
    y += vel_y;
    no_chao = false;
} else {
    vel_y = 0;
    no_chao = true;
}
