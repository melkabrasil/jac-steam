for (var i = 0; i < array_length(confetes); i++) {
    confetes[i].y += confetes[i].vel_y;
    confetes[i].x += confetes[i].vel_x;

    // Reposiciona confete se sair da tela
    if (confetes[i].y > display_get_height()) {
        confetes[i].y = -10;
        confetes[i].x = irandom(display_get_width());
    }
}
