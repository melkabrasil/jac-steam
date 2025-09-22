x += velocidade * direcao;

// Verifica os limites da tela ou área desejada
if (x > 1725) {
    direcao = -1; // muda para esquerda
}
else if (x < 1400) {
    direcao = 1; // muda para direita
}