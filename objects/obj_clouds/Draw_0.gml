if (texto_visivel) {
    draw_set_color(c_olive);
    draw_set_font(fnt_menu);
    draw_text_transformed(x - 160, y, texto, escala_atual, escala_atual, 0);
}

if (mostrar_imagem) {
    if (!imagem_trocada) {
        draw_sprite(spr_clouda, 0, x -832, y - 128);
		depth = -1000; 

    } else {
        draw_sprite(spr_nuvens, 0, x, y);
		depth = -13; 
		global.clouds = true;
    }
}