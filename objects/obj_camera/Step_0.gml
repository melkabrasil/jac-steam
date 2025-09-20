// Atualiza a câmera se a tela for redimensionada
if (display_get_width() != global.largura_tela || display_get_height() != global.altura_tela) {
    global.largura_tela = display_get_width();
    global.altura_tela = display_get_height();

    var largura_camera = min(global.largura_tela, room_width);
    var altura_camera = min(global.altura_tela, room_height);

    camera_set_view_size(global.camera, largura_camera, altura_camera);
    camera_set_view_pos(global.camera, 0, 0);
}

// Centraliza a câmera na sala
var x_centro = (room_width - camera_get_view_width(global.camera)) / 2;
var y_centro = (room_height - camera_get_view_height(global.camera)) / 2;
camera_set_view_pos(global.camera, x_centro, y_centro);