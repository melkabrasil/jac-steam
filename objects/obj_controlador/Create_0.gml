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