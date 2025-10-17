if (texto_visivel) {
    draw_set_color(c_olive);
    draw_set_font(fnt_menu);

    // Desenha o texto com escala usando draw_text_transformed
    draw_text_transformed(x - 160, y + 160, texto, escala_atual, escala_atual, 0);
}

if (mostrar_imagem) {
    draw_sprite(spr_colorjac, 0, x, y);
}