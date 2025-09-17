if (position_meeting(mouse_x, mouse_y, id)) {
    zoom_target = 1; // Zoom quando o mouse está em cima
} else {
    zoom_target = 0.9;   // Volta ao normal
}

// Aplica interpolação suave
image_xscale = lerp(image_xscale, zoom_target, zoom_speed);
image_yscale = lerp(image_yscale, zoom_target, zoom_speed);

if (mouse_check_button_pressed(mb_any)) 
{
	room_goto(c_science);
}