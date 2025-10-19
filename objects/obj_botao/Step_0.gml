if room = b_fases {// Detecta se o mouse está sobre o botão (formato losango)
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
}} else {
	 if room = f_arts{
		 if (botao_visivel) {
    var mx = mouse_x;
    var my = mouse_y;
	depth = -13

    var bx1 = display_get_width()/2 - 630;
    var bx2 = display_get_width()/2 - 450;
    var by1 = display_get_height()/2 + 100;
    var by2 = display_get_height()/2 + 140;

    if (mouse_check_button_pressed(mb_left)) {
        if (mx > bx1 && mx < bx2 && my > by1 && my < by2) {
            // Botão clicado
            mostrar_sprite = false;

            if (
    global.clouds = true &&
    global.colorjac = true  &&
    global.engrenagens = true  &&
    global.grass = true  &&
    global.skyy = true 
) {
                sprite_mostrar = spr_emblema_arts_2;
                mostrar_sprite = true;
            } else {
                sprite_mostrar = spr_cont_arts;
                mostrar_sprite = true;
            }
        }
    }
}

if (mostrar_sprite) {
					depth = -2000;
    if (keyboard_check_pressed(vk_space)) {
        if (    global.clouds == false or
		        global.colorjac == false or
                global.engrenagens == false or
                global.grass == false or
                global.skyy == false ) {
            mostrar_sprite = false;
        } else {
            room_goto(emblemaarts); // Altere para a room desejada
        }
    }
}
	 }}
	 
	if keyboard_check_pressed(vk_enter){room_goto(c_lab_marie)}