
// Verifica se mouse está sobre "Créditos"
hover_creditos = point_in_rectangle(mouse_x, mouse_y,
    botao_creditos_x - largura_creditos/2, botao_creditos_y - altura_creditos/2,
    botao_creditos_x + largura_creditos/2, botao_creditos_y + altura_creditos/2);

escala_creditos = lerp(escala_creditos, hover_creditos ? 1.2 : 1, 0.1);

// Clique em qualquer botão
if (mouse_check_button_pressed(mb_any)) {
	
    if (hover_creditos) room_goto(h_creditos);
}
