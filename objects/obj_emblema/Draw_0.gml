

for (var i = 0; i < array_length(confetes); i++) {
    draw_set_alpha(fade_alpha);
    draw_set_color(confetes[i]._cor);
    draw_circle(confetes[i].x, confetes[i].y, 4, false);
}
draw_set_alpha(fade_alpha);

    if room == emblematech{
	   draw_sprite(emb_tech, 0, x +870, y - 60);
	   } 
		
	if room == emblemaarts {
	   draw_sprite(emb_arts, 0, x +870, y - 60);
	}
		
	if room == emblemascience {
	   draw_sprite(emb_sc, 0, x +870, y - 60);
	}
	
	if (room == g_math || room == e_engineering) {
    draw_sprite(spr_voltar, 0, x, y);
}

	if (room == h_creditos) {
    draw_sprite(spr_blackvoltar, 0, x, y - 40);
}
	 


// Botão central
if (botao_visivel) {
	 draw_sprite(spr_botao, 0, x +970, y + 400);
}


