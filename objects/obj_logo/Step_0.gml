if (position_meeting(mouse_x, mouse_y, id)) {
    zoom_target = 0.7; // Zoom quando o mouse está em cima
} else {
    zoom_target = 0.6;   // Volta ao normal
}

// Aplica interpolação suave
image_xscale = lerp(image_xscale, zoom_target, zoom_speed);
image_yscale = lerp(image_yscale, zoom_target, zoom_speed);