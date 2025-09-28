spawn_timer--;

if (spawn_timer <= 0 && !global.portal_ativo) {
    // Resetar timer
    spawn_timer = spawn_time;

    // Escolhe aleatoriamente um obstáculo da lista
    var obj_to_spawn = choose(obstacles[0], obstacles[1], obstacles[2], obstacles[3]);

    // Posição de spawn (direita da tela, Y aleatório)
    var sx = room_width;
   // var sy = irandom_range(0, room_height - sprite_get_height(object_get_sprite(obj_to_spawn)));
	var sy = irandom(room_height);

show_debug_message("Spawnando: " + string(obj_to_spawn));

    // Cria o obstáculo na layer "Instances" (ou a layer da sua room)
    instance_create_layer(sx, sy, "Instances", obj_to_spawn);
}

/*if (!global.portal_ativo) {
    // lógica de spawn
    var yy = irandom_range(64, room_height - 64);
    instance_create_layer(room_width + 32, yy, "Instances", obj_asteroide);
}*/




