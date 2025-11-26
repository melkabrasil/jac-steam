// Posição e dimensões do botão
var btn_w = sprite_get_width(spr_menu_icon);
var btn_h = sprite_get_height(spr_menu_icon);
var margin = 16;
var btn_x = display_get_gui_width() - margin - btn_w;
var btn_y = margin;

// Desenha o ícone do menu
draw_sprite(spr_menu_icon, 0, btn_x, btn_y);