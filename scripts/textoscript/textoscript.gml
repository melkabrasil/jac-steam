function scr_textos(){
	switch npc_nome{

	case "Bill":
	ds_grid_add_text("Parabéns! Após coletar 3 microchips em x tentativas, Jac encontra o técnico de  informática Bill!", 1, "");
    ds_grid_add_text(	"Explorando o ambiente, Jac pratica a ''inovação'', usando a determinação para continuar a aventura com STEAM.", 1, "");
	ds_grid_add_text("Bill, o que a letra ''T'' representa no STEAM? Pode me explicar por que é importante para o mundo?", 1, "Jac");
	ds_grid_add_text("Fico feliz em receber essa pergunta, Jac! A letra 'T' representa Technology, que é a Tecnologia em nosso idioma.", 0, "Bill");
	ds_grid_add_text("A tecnologia permite que nós acessemos uma biblioteca de informações, conversemos com nossos amigos e familiares, e é capaz de transformar o futuro com novas inovações.", 0, "Bill");
	

	break;
		
	
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