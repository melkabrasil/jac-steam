// Hover simples
hover = point_in_rectangle(mouse_x, mouse_y, x - w/2, y - h/2, x + w/2, y + h/2);

// Clique
if (mouse_check_button_pressed(mb_any) && hover) {
    // Checa se há controlador
    if (obj_mathcontr != noone && instance_exists(obj_mathcontr)) {
        if (is_correct) {
            global.mscore += 10;
        } else {
            global.mlives -= 1;
        }
        // Gera nova pergunta e remove botões atuais
        with (obj_mathbutton) instance_destroy();
        obj_mathcontr.generate_question();
    } else {
        // Fallback: destrói e evita travar
        with (obj_mathbutton) instance_destroy();
    }
}