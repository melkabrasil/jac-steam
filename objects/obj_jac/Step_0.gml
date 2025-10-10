/// Função de colisão com obstáculos
function colisao_obstaculo(x, y) {
    return place_meeting(x, y, obj_chao)
        || place_meeting(x, y, obj_obs_tech)
        || place_meeting(x, y, obj_obs_tech_2);
}

#region Diálogo com NPCs

if (distance_to_object(obj_par_npcs) <= 10) {
    sprite_index = spr_jac_idle;

    if (keyboard_check_pressed(ord("Z"))) {
        var _npc = instance_nearest(x, y, obj_par_npcs);
        var _dialogo = instance_create_layer(x, y, "Instances_talknfade", obj_dialogo);

        if object_exists(obj_dialogo) {
            _dialogo.npc_nome = _npc.nome;
        }
    }
}

#endregion

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

// Aplicar gravidade
vel_y += gravidade;

// Movimento vertical com colisão precisa
if (!colisao_obstaculo(x, y + vel_y)) {
    y += vel_y;
    no_chao = false;
} else {
    while (!colisao_obstaculo(x, y + sign(vel_y))) {
        y += sign(vel_y);
    }
    vel_y = 0;
    no_chao = true;
}

// Verifica se o diálogo está ativo

       if (distance_to_object(obj_par_npcs) >= 10) {// Pulo
        if ((keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_space)) && no_chao) {
            vel_y = pulo;
            sprite_index = spr_jac_idle;
        }
}
        // Espelhar sprite conforme direção
        image_xscale = direcao;

        // Colisão com obstáculo especial
        if (place_meeting(x, y, obj_obs_tech_1)) {
            piscar = true;
            if (giro_total < giro_alvo) {
                image_angle += giro_velocidade;
                giro_total += giro_velocidade;
                vel_y = pulo;
                physics_active = false;
            }
            tempo_piscar = 10;
        }

        // Efeito de piscar
        if (piscar) {
            tempo_piscar -= 1;
            image_alpha = ((tempo_piscar mod 6) < 3) ? 0.3 : 1;

            if (tempo_piscar <= 0) {
                giro_total = 0;
                image_alpha = 1;
                image_angle = 0;
                piscar = false;
                tentativas += 1;
                x = x_inicial;
                y = y_inicial;
            }
        }

        // Reativa física ao retornar à posição inicial
        if ((x == x_inicial) && (y == y_inicial)) {
            physics_active = true;
        }

        // Movimento com plataforma móvel
        if (place_meeting(x, y + 1, obj_obs_tech_2)) {
            x += obj_obs_tech_2.velocidade * obj_obs_tech_2.direcao;
        }

        // Coleta de estrela
        if (place_meeting(x, y, obj_star_tech)) {
            star += 1;
        }
		
		if distance_to_object(obj_par_npcs) <= 10 && keyboard_check_pressed(vk_space) {
    contador_space += 1;
	if contador_space >= 5 { 
		room_goto(emblematech)
	}} else {
	if distance_to_object(obj_par_npcs) >= 10{
		contador_space = 0;
	}}
		
		if distance_to_object(obj_par_npcs) <= 10 && keyboard_check_pressed(ord("Z")) {
    contador_z += 1; }else{ if distance_to_object(obj_par_npcs) >= 10{
		contador_z = 0;
	}}

    