// Velocidade do scroll
x -= 2;

// Se o fundo já andou uma largura inteira, volta para 0
if (x <= -sprite_width) {
    x += sprite_width;
}
