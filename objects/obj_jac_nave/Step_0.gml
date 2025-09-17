// Velocidade da nave
var vel = 5;

// Movimento horizontal
if (keyboard_check(vk_right)) {
    x += vel;
}
if (keyboard_check(vk_left)) {
    x -= vel;
}

// Movimento vertical
if (keyboard_check(vk_up)) {
    y -= vel;
}
if (keyboard_check(vk_down)) {
    y += vel;
}

// Limitar a nave dentro da tela
if (x < 0) x = 0;
if (x > room_width - sprite_width) x = room_width - sprite_width;
if (y < 0) y = 0;
if (y > room_height - sprite_height) y = room_height - sprite_height;
