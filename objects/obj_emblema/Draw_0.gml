
// Confetes
for (var i = 0; i < array_length(confetes); i++) {
    draw_set_alpha(fade_alpha);
    draw_set_color(confetes[i]._cor);
    draw_circle(confetes[i].x, confetes[i].y, 4, false);
}
draw_set_alpha(fade_alpha);

    if room == emblematech{
	   draw_text(display_get_width()/2 - 150, display_get_height()/2 - 300, "    Parabéns, você completou a fase");
	   draw_text(display_get_width()/2 - 150, display_get_height()/2 - 260, "                     Technology!");
	   } 
		
	if room == emblemaarts {
	   draw_text(display_get_width()/2 - 150, display_get_height()/2 - 300, "Parabéns, você completou a fase Arts!");
	}
		
	if room == emblemascience {
	   draw_sprite(emb_sc, 0, x +870, y - 60);
	}
	 


// Botão central
if (botao_visivel) {
    var bx1 = display_get_width()/2 -1;
    var bx2 = display_get_width()/2 + 200;
    var by1 = display_get_height()/2 + 100;
    var by2 = display_get_height()/2 + 140;

    if room == emblematech or room == emblemascience{
	   draw_set_color(c_orange);
	   
	} else {  
		
	if room == emblemaarts {
	   draw_set_color(c_navy);
	}
	   }
	
    draw_set_alpha(fade_alpha);
    draw_roundrect(bx1, by1, bx2, by2, false);
	draw_set_font(fnt_menu)
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_text(display_get_width()/2 + 100, (by1 + by2)/2, "Continuar");
}
