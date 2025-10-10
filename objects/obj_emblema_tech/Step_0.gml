// Fade-in progressivo
if (fade_alpha < 1) {
    fade_alpha += fade_vel;
} else {
    fade_alpha = 1;
    botao_visivel = true;
}

// Atualiza confetes
for (var i = 0; i < array_length(confetes); i++) {
    confetes[i].y += confetes[i].vel;
    if (confetes[i].y > display_get_height()) {
        confetes[i].y = irandom_range(-200, -20);
        confetes[i].x = irandom(display_get_width());
    }
}