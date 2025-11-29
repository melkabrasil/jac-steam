if (global.mlives <= 0) {
    if (keyboard_check_pressed(ord("R"))) {
        global.mscore = 0;
        global.mlives = 3;
        generate_question();
    }
}