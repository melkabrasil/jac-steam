for (var i = 0; i < array_length(confetes); i++) {
    draw_set_color(confetes[i].cor);
    draw_circle(confetes[i].x, confetes[i].y, confetes[i].tamanho, false);
}
