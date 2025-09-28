// Movimento horizontal
if (keyboard_check(vk_right)) {
    x += vel;
}
if (keyboard_check(vk_left)) {
    x -= vel;
}

// Verifica se está se movendo
if (keyboard_check(vk_left) || keyboard_check(vk_right) || keyboard_check(vk_up) || keyboard_check(vk_down)) {
    image_speed = 0.2; // ativa animação
} else {
    image_speed = 0;   // pausa animação
    image_index = 0;   // volta pro primeiro frame (opcional)
}
