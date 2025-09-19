if (room == a_menu) {
    for (var i = 0; i < array_length(menu_opcoes); i++) {
        var pos_x = 375;
        var pos_y = 460 + i * 80;

        var hovered = point_in_rectangle(mouse_x, mouse_y, pos_x - 110, pos_y - 35, pos_x + 110, pos_y + 35);

        if (hovered) {
            menu_hover = i;
            menu_zoom_target[i] = 1.2;
            box_zoom_target[i] = 1.1;
        } else {
            menu_zoom_target[i] = 1;
            box_zoom_target[i] = 1;
        }

        // Zoom suave
        menu_zoom[i] = lerp(menu_zoom[i], menu_zoom_target[i], zoom_speed);
        box_zoom[i] = lerp(box_zoom[i], box_zoom_target[i], zoom_speed);
    }

    // Verifica clique ou Enter
    if (menu_hover != -1 && (mouse_check_button_pressed(mb_any) || keyboard_check_pressed(vk_enter))) {
        switch (menu_hover) {
            case 0: // JOGAR
                room_goto(b_fases); // substitua pelo nome da sua room de jogo
                break;
            case 1: // CRÉDITOS
                room_goto(h_creditos); // substitua pelo nome da sua room de créditos
                break;
        }
    }
} else {
    instance_destroy(); // destrói se não estiver no menu
}