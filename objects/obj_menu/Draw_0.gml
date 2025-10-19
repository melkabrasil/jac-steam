draw_set_font(fnt_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

for (var i = 0; i < array_length(menu_opcoes); i++) {
    var pos_x = 375;
    var pos_y = 460 + i * 80;

    var largura_base = 220;
    var altura_base = 60;
    var largura = largura_base * box_zoom[i];
    var altura = altura_base * box_zoom[i];

    var left = pos_x - largura / 2;
    var top = pos_y - altura / 2;
    var right = pos_x + largura / 2;
    var bottom = pos_y + altura / 2;

    var cor_fundo = make_color_rgb(2, 119, 215);
    var cor_borda = make_color_rgb(2, 119, 215);
    var raio = 20;

    // Fundo arredondado
    draw_set_color(cor_fundo);
    draw_rectangle(left + raio, top, right - raio, bottom, false);
    draw_rectangle(left, top + raio, right, bottom - raio, false);
    draw_circle(left + raio, top + raio, raio, false);
    draw_circle(right - raio, top + raio, raio, false);
    draw_circle(left + raio, bottom - raio, raio, false);
    draw_circle(right - raio, bottom - raio, raio, false);

    // Borda
    draw_set_color(cor_borda);
    var borda_espessura = 4;
    for (var b = 0; b < borda_espessura; b++) {
        draw_rectangle(left + raio - b, top - b, right - raio + b, bottom + b, true);
        draw_rectangle(left - b, top + raio - b, right + b, bottom - raio + b, true);
        draw_circle(left + raio, top + raio, raio + b, true);
        draw_circle(right - raio, top + raio, raio + b, true);
        draw_circle(left + raio, bottom - raio, raio + b, true);
        draw_circle(right - raio, bottom - raio, raio + b, true);
    }

    // Texto com contorno
    var texto = menu_opcoes[i];
    var zoom = menu_zoom[i];
    var d = 2.5;

    draw_set_color(make_color_rgb(5, 80, 120));
    draw_text_transformed(pos_x - d, pos_y, texto, zoom, zoom, 0);
    draw_text_transformed(pos_x + d, pos_y, texto, zoom, zoom, 0);
    draw_text_transformed(pos_x, pos_y - d, texto, zoom, zoom, 0);
    draw_text_transformed(pos_x, pos_y + d, texto, zoom, zoom, 0);

    draw_set_color(c_white);
    draw_text_transformed(pos_x, pos_y, texto, zoom, zoom, 0);
}