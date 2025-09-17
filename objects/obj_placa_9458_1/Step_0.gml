x += hsp;

// Destruir se sair da tela
if (x < -sprite_width) {
    instance_destroy();
}
draw_self(); // força a renderização
