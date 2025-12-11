// Hover simples
hover = point_in_rectangle(mouse_x, mouse_y, x - w/2, y - h/2, x + w/2, y + h/2);

// Clique
if (mouse_check_button_pressed(mb_any) && hover && global.mlives > 0) {

    // Pega a instância real do controlador
    var contr = instance_find(obj_mathcontr, 0);

    if (contr != noone) {

        if (is_correct) {
            global.mscore += 10;
        } else {
            global.mlives -= 1;
        }

        // Remove botões e gera nova pergunta
        with (obj_mathbutton) instance_destroy();
        contr.generate_question();

    } else {
        // Fallback
        with (obj_mathbutton) instance_destroy();
    }
}