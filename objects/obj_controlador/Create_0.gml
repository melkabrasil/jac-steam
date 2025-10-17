global.clouds = false;
global.colorjac = false;
global.engrenagens = false;
global.grass = false;
global.skyy = false;

var sprites = [
    spr_science,
    spr_technology,
    spr_engineering,
    spr_arts,
    spr_math
];

var salas = [
    c_science,
    d_technology,
    e_engineering,
    f_arts,
    g_math
];

for (var i = 0; i < array_length(sprites); i++) {
    var x_pos = 290 + i * 200;
    var y_pos = 370;

    var botao = instance_create_layer(x_pos, y_pos, "Instances", obj_botao);
    botao.sprite_index = sprites[i];
    botao.botao_sala = salas[i];
}

if room = f_arts{
	var _npc = instance_nearest(x, y, obj_par_npcs);
	if (_npc.mouse_sobre && (mouse_check_button_pressed(mb_left) ||
                    mouse_check_button_pressed(mb_right) ||
                    mouse_check_button_pressed(mb_middle)||
					gamepad_button_check_pressed(0, gp_face1) ||
					gamepad_button_check_pressed(0, gp_face2) ||
					gamepad_button_check_pressed(0, gp_face3) ||
					gamepad_button_check_pressed(0, gp_face4))) {
			
        var _dialogo = instance_create_layer(x, y, "Instances_talknfade", obj_dialogo);

        if object_exists(obj_dialogo) {
            _dialogo.npc_nome = _npc.nome;
        }}
}