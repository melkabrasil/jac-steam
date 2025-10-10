// Detecta se o mouse está sobre o botão (formato losango)
var dx = abs(mouse_x - x);
var dy = abs(mouse_y - y);
var dentro = (dx + dy < sprite_width / 2);

// Animação de escala
if (dentro) {
    escala = lerp(escala, 1.2, escala_vel); // aumenta suavemente
} else {
    escala = lerp(escala, 1.0, escala_vel); // volta ao normal
}

// Clique com mouse ou controle
var mouse_clicado = mouse_check_button_pressed(mb_left) ||
                    mouse_check_button_pressed(mb_right) ||
                    mouse_check_button_pressed(mb_middle);

var pad_clicado = gamepad_is_connected(0) && (
    gamepad_button_check_pressed(0, gp_face1) ||
    gamepad_button_check_pressed(0, gp_face2) ||
    gamepad_button_check_pressed(0, gp_face3) ||
    gamepad_button_check_pressed(0, gp_face4)
);

if (dentro && (mouse_clicado || pad_clicado)) {
    room_goto(botao_sala);
}