// Verifica se mouse está sobre "Jogar"
hover_jogar = point_in_rectangle(mouse_x, mouse_y,
    botao_jogar_x - largura_jogar/2, botao_jogar_y - altura_jogar/2,
    botao_jogar_x + largura_jogar/2, botao_jogar_y + altura_jogar/2);


// Animação com lerp (cresce se hover, volta se não)
escala_jogar = lerp(escala_jogar, hover_jogar ? 1.2 : 1, 0.1);

// Clique em qualquer botão
if (mouse_check_button_pressed(mb_any)) {
    if (hover_jogar) room_goto(b_fases);
}
