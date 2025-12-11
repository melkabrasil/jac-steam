// Estado do jogo
global.mscore = 0;
global.mlives = 3;

// Parâmetros da pergunta
a = 0;
b = 0;
correct_answer = 0;

// Layout dos botões
button_count = 3;
button_y = 300;
button_x_start = 240;
button_x_step = 180;

// Evitar múltiplas criações simultâneas
buttons_active = false;

// Função de embaralhamento REAL
function shuffle_array(arr) {
    for (var i = array_length(arr) - 1; i > 0; i--) {
        var j = irandom(i);
        var temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
    }
}

// Cria primeira pergunta
generate_question();

/// Script local: gerar pergunta e criar botões
function generate_question() {
    a = irandom_range(0, 20);
    b = irandom_range(0, 20);
    correct_answer = a * b;

    var wrong1 = correct_answer + irandom_range(1, 10);
    var wrong2 = correct_answer - irandom_range(1, 10);
    if (wrong2 < 0) wrong2 = irandom_range(0, 20);

    if (wrong1 == correct_answer) wrong1 += 1;
    if (wrong2 == correct_answer || wrong2 == wrong1) wrong2 += 2;

    var answers = [correct_answer, wrong1, wrong2];

    // ✅ embaralhamento funcionando
    shuffle_array(answers);

    with (obj_mathbutton) instance_destroy();

    for (var i = 0; i < button_count; i++) {
        var xx = button_x_start + i * button_x_step;
        var btn = instance_create_layer(xx, button_y, "Instances", obj_mathbutton);
        btn.value = answers[i];
        btn.is_correct = (answers[i] == correct_answer);
        btn.controller = id;
    }

    buttons_active = true;
}