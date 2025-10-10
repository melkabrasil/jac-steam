mensagem = "Você mandou muito bem na fase Tech!";
botao_visivel = true;

// Confetes
confetes = [];
for (var i = 0; i < 50; i++) {
    var c = {
        x: irandom(display_get_width()),
        y: irandom_range(-200, -20),
        vel: irandom_range(2, 5),
        cor: make_color_hsv(irandom(360), 255, 255)
    };
    array_push(confetes, c);
}