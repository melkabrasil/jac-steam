mensagem = "Você mandou muito bem na fase Tech!";
botao_visivel = false;

fade_alpha = 0; // começa invisível
fade_vel = 0.02;

confetes = [];
for (var i = 0; i < 100; i++) {
    var _cor;
    var escolha = irandom(2);
    switch (escolha) {
        case 0: _cor = make_color_rgb(255, irandom_range(100, 165), 0); break; // Laranja
        case 1: _cor = c_white; break; // Branco
        case 2: _cor = make_color_rgb(255, 255, irandom_range(100, 0)); break; // Amarelo
    }

    var novo_confete = {
        x: irandom(display_get_width()),
        y: irandom(display_get_height()),
        vel: random_range(1, 3), // 👈 Aqui definimos a velocidade
        _cor: _cor
    };

    array_push(confetes, novo_confete);
}