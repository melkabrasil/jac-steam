if (texto_visivel) {
    draw_set_color(c_maroon);
    draw_set_font(fnt_menu);
	draw_set_halign(fa_left);
    // Desenha o texto com escala usando draw_text_transformed
    draw_text_transformed(x - 700, y + 420, texto, escala_atual, escala_atual, 0);
}

if (mostrar_imagem) {
    if (!imagem_trocada) {
        draw_sprite(spr_spra, 0, x -832, y - 128);
				depth = -1000; 
    } else {
        draw_sprite(spr_colorjac, 0, x, y);
				depth = -13; 
				global.colorjac = true;
    }
}