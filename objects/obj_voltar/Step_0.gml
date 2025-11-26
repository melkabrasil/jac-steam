// Posição do mouse no espaço GUI
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

// Dimensões do botão (sprite do ícone do menu)
var btn_w = sprite_get_width(spr_menu_icon);
var btn_h = sprite_get_height(spr_menu_icon);

// Posição no canto superior direito
var margin = 16;
var btn_x = display_get_gui_width() - margin - btn_w;
var btn_y = margin;

// Verifica se o mouse está sobre o botão
var over = (mx >= btn_x) && (mx <= btn_x + btn_w) && (my >= btn_y) && (my <= btn_y + btn_h);

// Se clicar, troca para a room do menu
if (over && mouse_check_button_pressed(mb_left)) {
    room_goto(a_menu); // substitua rm_menu pelo nome da sua room de menu
}