function scr_textos(){
	switch npc_nome{

	case "Bill":
	ds_grid_add_text("Parabéns! Após coletar microchips, Jac encontra o técnico de  informática Bill!", 1, "");
    ds_grid_add_text(	"Explorando o ambiente, Jac pratica a ''inovação'', usando a determinação para continuar a aventura com STEAM.", 1, "");
	ds_grid_add_text("Bill, o que a letra ''T'' representa no STEAM? Pode me explicar por que é importante para o mundo?", 1, "Jac");
	ds_grid_add_text("Fico feliz em receber essa pergunta, Jac! A letra ''T'' representa Technology, que é a Tecnologia em nosso idioma.", 0, "Bill");
	ds_grid_add_text("A tecnologia permite que nós acessemos uma biblioteca de informações, conversemos com nossos amigos e familiares, e é capaz de transformar o futuro com novas inovações.", 0, "Bill");
	

	break;
	
	case "Engrenagens":
	ds_grid_add_text("Engrenagens trabalham juntas para fazer máquinas funcionarem. É como o trabalho em equipe!", 1, "Jac");
	ds_grid_add_text("Fico feliz em receber essa pergunta, Jac! A letra ''T'' representa Technology, que é a Tecnologia em nosso idioma.", 0, "Bill");
	ds_grid_add_text("A tecnologia permite que nós acessemos uma biblioteca de informações, conversemos com nossos amigos e familiares, e é capaz de transformar o futuro com novas inovações.", 0, "Bill");
	

	break;
	
	case "Marie":
	ds_grid_add_text("Parabéns! Após coletar todos os átomos, Jac encontra a cientista Marie em seu laboratório!", 1, "");
	ds_grid_add_text("O pequeno Jac percebeu que estava usando o valor da ''Descoberta'', uma vez que explorava suas ideias e habilidades enquanto descobria mais sobre o STEAM!", 1, "");
	ds_grid_add_text("No início da visita, logo perguntou a ela sobre a sua principal dúvida.", 1, "");
	ds_grid_add_text("Marie, o que a letra ''S'' representa no STEAM? Poderia me explicar por que é importante para o mundo?", 1, "Jac");
	ds_grid_add_text("Que pergunta incrível, Jac! O ''S'' é sobre Science, que traduzindo, é Ciência no português.", 1, "Marie");
	ds_grid_add_text("O papel da Ciência é pesquisar e desvendar os mistérios do mundo, o que é essencial para entendermos como e por que cada coisa existe.", 1, "Marie");
	
}
}

function ds_grid_add_row(){
	
	var _grid = argument[0];
	ds_grid_resize(_grid, ds_grid_width(_grid), ds_grid_height(_grid)+1);
	return(ds_grid_height(_grid)-1);
}

function ds_grid_add_text (){
	var _grid = texto_grid;
	var _y = ds_grid_add_row(_grid);
	
	_grid[# 0, _y] = argument[0];
	_grid[# 1, _y] = argument[1];
	_grid[# 2, _y] = argument[2];
}