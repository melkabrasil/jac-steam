// Número de confetes
var total_confetes = 100;
confetes = [];

for (var i = 0; i < total_confetes; i++) {
    var confete = {
        x: irandom(display_get_width()),
        y: irandom(display_get_height()),
        vel_y: random_range(1, 3),
        vel_x: random_range(-1, 1),
        cor: make_color_hsv(irandom(360), 240, 240),
        tamanho: irandom_range(2, 5)
    };
    array_push(confetes, confete);
}
