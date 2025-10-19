if (room == a_menu) {
    menu_hover = -1;

    for (var i = 0; i < array_length(menu_opcoes); i++) {
        var pos_x = 375;
        var pos_y = 460 + i * 80;

        var largura_base = 220;
        var altura_base = 60;
        var largura = largura_base * box_zoom[i];
        var altura = altura_base * box_zoom[i];

        var left = pos_x - largura / 2;
        var top = pos_y - altura / 2;
        var right = pos_x + largura / 2;
        var bottom = pos_y + altura / 2;

        var hovered = point_in_rectangle(mouse_x, mouse_y, left, top, right, bottom);

        if (hovered) {
            menu_hover = i;
            menu_zoom_target[i] = 1.2;
            box_zoom_target[i] = 1.1;
        } else {
            menu_zoom_target[i] = 1;
            box_zoom_target[i] = 1;
        }

        menu_zoom[i] = lerp(menu_zoom[i], menu_zoom_target[i], zoom_speed);
        box_zoom[i] = lerp(box_zoom[i], box_zoom_target[i], zoom_speed);
    }

    var qualquer_botao = 
                         mouse_check_button_pressed(mb_right) ||
                         mouse_check_button_pressed(mb_middle) ||
                         gamepad_button_check_pressed(0, gp_face1) ||
                         gamepad_button_check_pressed(0, gp_face2) ||
                         gamepad_button_check_pressed(0, gp_face3) ||
                         gamepad_button_check_pressed(0, gp_face4);

    if (menu_hover != -1 && qualquer_botao) {
        switch (menu_hover) {
            case 0: room_goto(b_fases); break;
            case 1: room_goto(h_creditos); break;
        }
    }
} else {
    instance_destroy();
}