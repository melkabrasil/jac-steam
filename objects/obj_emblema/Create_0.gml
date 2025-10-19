
botao_visivel = false;

fade_alpha = 0; // começa invisível
fade_vel = 0.02;
confetes = [];
if (room == g_math || room == e_engineering || room == h_creditos) {
    var bx = x;
    var by = y;
    var bw = sprite_get_width(spr_botao);
    var bh = sprite_get_height(spr_botao);

    var mx = mouse_x;
    var my = mouse_y;

    var mouse_sobre = (mx > bx && mx < bx + bw && my > by && my < by + bh);

    if (mouse_sobre && mouse_check_button_pressed(mb_left)) {
        room_goto(b_fases);
	}} else {
for (var i = 0; i < 100; i++) {
    var _cor;
    var escolha = irandom(2);
	if room == emblematech or room == emblemascience{
    switch (escolha) {
        case 0: _cor = make_color_rgb(255, irandom_range(100, 165), 0); break; // Laranja
        case 1: _cor = c_white; break; // Branco
        case 2: _cor = make_color_rgb(255, 255, irandom_range(100, 0)); break; // Amarelo
    }
	}
	
	if room == emblemaarts{
		switch (escolha) {
        case 0: _cor =c_navy; break; // Laranja
        case 1: _cor = c_white; break; // Branco
        case 2: _cor = c_blue; break; // Amarelo
    }}

    var novo_confete = {
        x: irandom(display_get_width()),
        y: irandom(display_get_height()),
        vel: random_range(1, 3), // 👈 Aqui definimos a velocidade
        _cor: _cor
    };

    array_push(confetes, novo_confete);
}}