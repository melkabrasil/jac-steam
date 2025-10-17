if (texto_visivel) {
    draw_set_color(c_olive);
    draw_set_font(fnt_menu);
	draw_set_halign(fa_left);
    draw_text_transformed(x - 200, y + 320, texto, escala_atual, escala_atual, 0);
}

if (mostrar_imagem) {
    if (!imagem_trocada) {
        draw_sprite(spr_engrea, 0, x - 832, y - 128);
				depth = -1000; 
    } else {
        draw_sprite(spr_engrenagens, 0, x, y);
				depth = -13; 
				global.engrenagens = true;
    }
}