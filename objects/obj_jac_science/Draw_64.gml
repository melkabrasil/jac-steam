if (distance_to_object(obj_par_npcs) <= 10) {
        draw_set_font(fnt_menu); // opcional
        draw_set_color(c_black);
        draw_set_halign(fa_center);

        if (contador_z == 1) {
            draw_text(775, 300, "Aperte [espaço] para interagir");
        } else {
            draw_text(775, 300, "Aperte Z para interagir");
        }
    
}
