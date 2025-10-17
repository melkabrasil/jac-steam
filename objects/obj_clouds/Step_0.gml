var mx = mouse_x;
var my = mouse_y;

// Define a fonte para medir o texto
draw_set_font(fonte_base);
var largura = string_width(texto) * escala_atual;
var altura = string_height(texto) * escala_atual;

// Verifica se o mouse está sobre o texto deslocado
mouse_sobre = (mx > x - 160) && (mx < x - 160 + largura) &&
              (my > y) && (my < y + altura);

// Define a escala alvo com base no mouse
escala_alvo = mouse_sobre ? 1.5 : 1.0;

// Suaviza a transição com lerp
escala_atual = lerp(escala_atual, escala_alvo, 0.2);

// Se clicar, esconde o texto e mostra a imagem
if (mouse_sobre && (mouse_check_button_pressed(mb_left) ||
                    mouse_check_button_pressed(mb_right) ||
                    mouse_check_button_pressed(mb_middle)||
					gamepad_button_check_pressed(0, gp_face1) ||
					gamepad_button_check_pressed(0, gp_face2) ||
					gamepad_button_check_pressed(0, gp_face3) ||
					gamepad_button_check_pressed(0, gp_face4))) {

    texto_visivel = false;
    mostrar_imagem = true;
}

if (keyboard_check_pressed(vk_space) && mostrar_imagem && !imagem_trocada) {
    imagem_trocada = true;
}