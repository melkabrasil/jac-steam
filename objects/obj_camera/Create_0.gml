// Detecta o tamanho da tela
global.largura_tela = display_get_width();
global.altura_tela = display_get_height();

// Garante que a câmera não ultrapasse os limites da sala
var largura_camera = min(global.largura_tela, room_width);
var altura_camera = min(global.altura_tela, room_height);

// Cria a câmera
global.camera = camera_create_view(0, 0, largura_camera, altura_camera, 0, -1, -1, largura_camera / 2, altura_camera / 2);

// Aplica à viewport 0
view_set_visible(0, true);
view_set_camera(0, global.camera);

// Ativa modo tela cheia
//window_set_fullscreen(true);