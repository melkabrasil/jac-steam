// Detecta clique do mouse sobre o botão
if (mouse_check_button_pressed(mb_left)) {
  
var half_w = sprite_width / 2;
var half_h = sprite_height / 2;

if (point_in_rectangle(mouse_x, mouse_y, x - half_w, y - half_h, x + half_w, y + half_h)) {
    room_goto(b_fases);
}
	}