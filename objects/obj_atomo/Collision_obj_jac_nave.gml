global.atomos_coletados += 1;
instance_destroy(); // remove o átomo coletado

if (global.atomos_coletados >= 10) {
    global.portal_ativo = true;
   // instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_gate);
}
