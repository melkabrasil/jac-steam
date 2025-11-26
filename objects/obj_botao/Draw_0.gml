if room = b_fases {
	if (sprite_index != -1) {
    draw_sprite_ext(sprite_index, image_index, x, y, escala, escala, 0, c_white, 1);
}
 } else {
	 if room = f_arts{
		 
if (botao_visivel) {
    var bx1 = display_get_width()/2 - 630;
    var bx2 = display_get_width()/2 - 450;
    var by1 = display_get_height()/2 + 100;
    var by2 = display_get_height()/2 +  150;

    draw_set_color(c_orange);
    draw_set_alpha(1);
    draw_roundrect(bx1, by1, bx2, by2, false);
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_text(display_get_width()/2 - 535, (by1 + by2)/2, "Continuar");
}

// Sprite informativo
if (mostrar_sprite && sprite_mostrar != noone) {
    draw_sprite(sprite_mostrar, 0, display_get_width()/2 - 960, display_get_height()/2 - 539);
}
	 }}