
if room == d_technology{
	if (distance_to_object(obj_par_npcs) >= 10) {
		draw_set_font(fnt_menu); // opcional, se quiser usar uma fonte personalizada
		draw_set_color(c_white);
		draw_set_halign(fa_left)
		draw_text(51, 32, "Tentativa: " + string(tentativas));
		draw_text(51, 68, "Microchips: 0" + string(star) + "/03");
	}
	
	if (distance_to_object(obj_par_npcs) <= 10) {
		if star = 3 {
			if contador_z = 1 {
				draw_set_font(fnt_menu); // opcional, se quiser usar uma fonte personalizada
				draw_set_color(c_ltgray);
				draw_set_halign(fa_center);
				draw_text(700, 300, "Aperte [espaço] para interagir")
			} else {
				draw_set_font(fnt_menu); // opcional, se quiser usar uma fonte personalizada
				draw_set_color(c_ltgray);
				draw_set_halign(fa_center);
				draw_text(700, 300, "Aperte Z para interagir")
				}
			} else {
				draw_set_font(fnt_menu); // opcional, se quiser usar uma fonte personalizada
				draw_set_color(c_ltgray);
				draw_set_halign(fa_center);
				draw_text(700, 300, "Quase lá! Volte e colete os 3 Microchips para falar com Bill sobre o STEAM")
				}
			}}